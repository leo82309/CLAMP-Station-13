/obj/item/instrument/guitar/black_red
	name = "black and red guitar"
	desc = "A cool looking black and red guitar."
	icon = 'modular_clamp/icons/Black_Red_Guitar.dmi'
	icon_state = "red_black_guitar_obj"
	lefthand_file = 'modular_clamp/icons/Black_Red_Guitar.dmi'
	righthand_file = 'modular_clamp/icons/Black_Red_Guitar.dmi'

/obj/item/instrument/guitar/black_red/build_worn_icon(default_layer = 0, default_icon_file = null, isinhands = FALSE, female_uniform = NO_FEMALE_UNIFORM, override_state = null, override_file = null, mutant_styles = NONE)
	if(isinhands)
		if(default_icon_file == righthand_file)
			override_state = "red_black_guitar_R_hand"
		else if(default_icon_file == lefthand_file)
			override_state = "red_black_guitar_L_hand"
	return ..()
