# base = ubuntu + full apt update
FROM ubuntu:jammy AS base

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# byond = base + byond installed globally
FROM base AS byond
WORKDIR /byond

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libcurl4 \
        curl \
        unzip \
        make \
        libstdc++6:i386 \
    && rm -rf /var/lib/apt/lists/*

COPY dependencies.sh .

RUN . ./dependencies.sh \
    && curl -H "User-Agent: tgstation/1.0 CI Script" "http://www.byond.com/download/build/${BYOND_MAJOR}/${BYOND_MAJOR}.${BYOND_MINOR}_byond_linux.zip" -o byond.zip \
    && unzip byond.zip \
    && cd byond \
    && sed -i 's|install:|&\n\tmkdir -p $(MAN_DIR)/man6|' Makefile \
    && make install \
    && chmod 644 /usr/local/byond/man/man6/* \
    && apt-get purge -y --auto-remove curl make \
    && cd .. \
    && rm -rf byond byond.zip

# build = byond + tgstation compiled and deployed to /deploy
FROM byond AS build
WORKDIR /tgstation

COPY dependencies.sh .

RUN . ./dependencies.sh \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        git \
        python3 \
        build-essential \
        pkg-config \
        zip \
        unzip \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && npm install -g yarn bun@${BUN_VERSION} \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN env TG_BOOTSTRAP_NODE_LINUX=1 tgui/bin/tgui --build \
    && (env TG_BOOTSTRAP_NODE_LINUX=1 tools/build/build.sh build || env TG_BOOTSTRAP_NODE_LINUX=1 tools/build/build.sh build) \
    && tools/deploy.sh /deploy \
    && cd /deploy \
    && zip clampstation.zip tgstation.rsc

# rust = base + rustc and i686 target
FROM base AS rust
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal \
    && ~/.cargo/bin/rustup target add i686-unknown-linux-gnu

# rust_g = base + rust_g compiled to /rust_g
FROM rust AS rust_g
WORKDIR /rust_g

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        pkg-config:i386 \
        libssl-dev:i386 \
        gcc-multilib \
        git \
    && rm -rf /var/lib/apt/lists/* \
    && git init \
    && git remote add origin https://github.com/tgstation/rust-g

COPY dependencies.sh .
RUN . ./dependencies.sh \
    && git fetch --depth 1 origin "${RUST_G_VERSION}" \
    && git checkout FETCH_HEAD \
    && env PKG_CONFIG_ALLOW_CROSS=1 ~/.cargo/bin/cargo build --release --target i686-unknown-linux-gnu

# final = byond + runtime deps + rust_g + build
FROM byond
WORKDIR /tgstation

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libssl3:i386 \
        zlib1g:i386 \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -m tgstation \
    && chown -R tgstation:tgstation /tgstation

USER tgstation

COPY --chown=tgstation:tgstation --from=build /deploy ./
COPY --chown=tgstation:tgstation --from=rust_g /rust_g/target/i686-unknown-linux-gnu/release/librust_g.so ./librust_g.so

COPY --chown=tgstation:tgstation modular_skyrat ./modular_skyrat
COPY --chown=tgstation:tgstation modular_zzvenus ./modular_zzvenus
COPY --chown=tgstation:tgstation modular_zubbers ./modular_zubbers
COPY --chown=tgstation:tgstation modular_zzplurt ./modular_zzplurt
COPY --chown=tgstation:tgstation modular_nova ./modular_nova
COPY --chown=tgstation:tgstation modular_clamp ./modular_clamp

COPY --chown=tgstation:tgstation sound ./sound
COPY --chown=tgstation:tgstation html ./html
COPY --chown=tgstation:tgstation strings ./strings
COPY --chown=tgstation:tgstation _maps ./_maps
COPY --chown=tgstation:tgstation icons ./icons

COPY --chown=tgstation:tgstation libdreamluau.so ./libdreamluau.so

RUN mkdir -p /tgstation/config /tgstation/data

ENV RUST_BACKTRACE=1
VOLUME [ "/tgstation/config", "/tgstation/data" ]
ENTRYPOINT [ "DreamDaemon", "tgstation.dmb", "-port", "1337", "-trusted", "-close", "-verbose" ]
EXPOSE 1337
