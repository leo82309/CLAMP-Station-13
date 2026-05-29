//Pop-out cake!
//A huge cake that can fit a person inside
//You can cut the cake up to 16 times to receive a cake slice. After that the cake is destroyed and a large cardboard box is left

/obj/structure/popout_cake
	name = "large cake"
	desc = "An enormous multi-tiered cake."

	icon = 'modular_clamp/icons/popout_cake.dmi'
	icon_state = "popout_cake"

	anchored = FALSE
	opacity = FALSE
	density = TRUE

	var/slices_amount = 16
	var/string_pulled = FALSE

/obj/structure/popout_cake/Destroy()
	for(var/mob/living/L in contents) //Release all mobs inside
		L.forceMove(get_turf(src))
	return ..()

/obj/structure/popout_cake/examine(mob/user)
	. = ..()
	to_chat(user, span_info("There are [slices_amount] slices remaining."))

/obj/structure/popout_cake/attack_hand(mob/living/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(user.loc == src) //Clicked from inside the cake
		pull_string(user)
		return
	else if(locate(/mob/living) in contents)
		to_chat(user, span_info("There appears to be something inside of \the [src]!"))
		return

	user.visible_message(span_notice("[user] starts climbing into \the [src]!"))
	if(do_after(user, 60, target = src))
		if(locate(/mob/living) in contents)
			to_chat(user, span_info("There appears to be something inside of \the [src]!"))
			return
		user.forceMove(src)
		to_chat(user, span_info("You are now inside the cake! When you're ready to emerge from the cake in a blaze of confetti and party horns, pull on the string by clicking on \the [src] (<b>this can only be done once</b>). If you wish to leave without setting off the confetti, just attempt to move out of the cake!"))

/obj/structure/popout_cake/attackby(obj/item/W, mob/user, params)
	if(W.get_sharpness())
		user.visible_message(span_notice("[user] starts cutting a slice from \the [src]."))
		if(do_after(user, 10, target = src))
			drop_slice()
			check_slices()
		return TRUE
	return ..()

/obj/structure/popout_cake/proc/drop_slice()
	slices_amount--
	return new /obj/item/food/cakeslice/plain(get_turf(src))

/obj/structure/popout_cake/proc/check_slices()
	if(slices_amount <= 0)
		new /obj/item/storage/box(get_turf(src))
		qdel(src)

/obj/structure/popout_cake/proc/pull_string(mob/living/L)
	if(HAS_TRAIT(L, TRAIT_INCAPACITATED))
		return

	if(string_pulled)
		to_chat(L, span_info("The string has already been pulled!"))
		return

	to_chat(L, span_info("You pull on the party string!"))
	release_object(L)
	string_pulled = TRUE

/obj/structure/popout_cake/proc/release_object(atom/movable/L, drop = FALSE)
	if(!L)
		if(!contents.len)
			return
		L = pick(contents)

	visible_message(span_notice("All of a sudden, something emerges from \the [src]!"))

	L.forceMove(drop_location())
	var/old_pixel_y = L.base_pixel_y
	L.base_pixel_y = L.base_pixel_y + 24
	animate(L, pixel_y = L.base_pixel_y, time = 40)

	playsound(src, 'modular_clamp/sound/effects/party_horn.ogg', 50, TRUE)
	do_sparks(6, TRUE, src)
	new /obj/effect/decal/cleanable/confetti(drop_location())
	for(var/turf/nearby_turf in range(2, src))
		if(prob(40))
			new /obj/effect/decal/cleanable/confetti(nearby_turf)

	addtimer(CALLBACK(src, PROC_REF(reset_pixel_y), L, old_pixel_y), 40)

/obj/structure/popout_cake/proc/reset_pixel_y(atom/movable/L, old_pixel_y)
	if(!L)
		return
	animate(L)
	L.base_pixel_y = old_pixel_y

/obj/structure/popout_cake/relaymove(mob/living/user, direction)
	if(user.loc == src)
		user.forceMove(drop_location())
		return TRUE
	return ..()

/obj/structure/popout_cake/take_damage(damage_amount, damage_type, damage_flag, sound_effect, attack_dir, armour_penetration)
	. = ..()
	if(damage_amount > 0)
		slices_amount -= clamp(round(damage_amount / 3), 1, 4)
		check_slices()

//When spawned, stuffs the corpse underneath it inside
/obj/structure/popout_cake/corpse_grabber/Initialize(mapload)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(grab_corpse)), 40)

/obj/structure/popout_cake/corpse_grabber/proc/grab_corpse()
	for(var/mob/living/L in loc)
		if(L.stat == DEAD)
			L.forceMove(src)
			break
