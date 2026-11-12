#!/usr/bin/env python3
import socket
import struct
import subprocess
import time
import sys
import os

PORT = int(os.environ.get('PORT', 3000))
HOST = '127.0.0.1'
PING_INTERVAL = int(os.environ.get('WATCHDOG_INTERVAL', 30))
MAX_FAILURES = int(os.environ.get('WATCHDOG_TIMEOUT_RETRIES', 3))

def ping_server(host, port):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(10.0)
        s.connect((host, port))
        
        query = b"?ping"
        length = len(query) + 6
        packet = b'\x00\x83' + struct.pack('>H', length) + b'\x00\x00\x00\x00\x00' + query + b'\x00'
        
        s.sendall(packet)
        resp = s.recv(1024)
        s.close()
        return True
    except Exception:
        return False

def main():
    if len(sys.argv) < 2:
        print("Usage: watchdog.py <command>")
        sys.exit(1)
        
    cmd = sys.argv[1:]
    print(f"Starting watchdog for: {' '.join(cmd)}")
    print(f"Watchdog settings: Interval={PING_INTERVAL}s, Max Failures={MAX_FAILURES}")
    
    process = subprocess.Popen(cmd)
    
    failures = 0
    # Give the server time to start up before checking
    time.sleep(60)
    
    while True:
        if process.poll() is not None:
            print("Server process exited")
            sys.exit(process.returncode)
            
        if ping_server(HOST, PORT):
            failures = 0
        else:
            failures += 1
            print(f"Server health check failed ({failures}/{MAX_FAILURES})", flush=True)
            
        if failures >= MAX_FAILURES:
            print("Server locked up! Terminating...", flush=True)
            process.terminate()
            try:
                process.wait(timeout=10)
            except subprocess.TimeoutExpired:
                process.kill()
            sys.exit(1)
            
        time.sleep(PING_INTERVAL)

if __name__ == "__main__":
    main()
