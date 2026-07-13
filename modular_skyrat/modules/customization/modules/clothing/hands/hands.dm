/obj/item/clothing/gloves/evening
	icon = 'modular_skyrat/master_files/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/hands.dmi'
	name = "evening gloves"
	desc = "Thin, pretty gloves intended for use in regal feminine attire, but knowing Space China these are just for some maid fetish."
	icon_state = "evening"
	strip_delay = 40
	equip_delay_other = 20
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/kim
	icon = 'modular_skyrat/master_files/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/hands.dmi'
	name = "aerostatic gloves"
	desc = "Vivid red gloves that exude a mysterious style, sadly not the best for gardening, or getting bodies out of trees."
	icon_state = "aerostatic_gloves"

/obj/item/clothing/gloves/military
	icon = 'modular_skyrat/master_files/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/hands.dmi'
	name = "military gloves"
	desc = "Tactical gloves made for military personnel, they are thin to allow easy operation of most firearms."
	icon_state = "military_gloves"
	siemens_coefficient = 0.4
	strip_delay = 60
	equip_delay_other = 60
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE

/obj/item/clothing/gloves/bracer/wraps
	name = "cloth arm wraps"
	desc = "Cloth bracers, the colour all left up to the choice of the wearer."
	icon = 'icons/map_icons/clothing/_clothing.dmi'
	icon_state = "/obj/item/clothing/gloves/bracer/wraps"
	post_init_icon_state = "arm_wraps"
	inhand_icon_state = "greyscale_gloves"
	greyscale_config = /datum/greyscale_config/armwraps
	greyscale_config_worn = /datum/greyscale_config/armwraps/worn
	greyscale_colors = "#FFFFFF"
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/gloves
	worn_icon_teshari = TESHARI_HANDS_ICON

/obj/item/clothing/gloves/maid_arm_covers
	name = "maid arm covers"
	desc = "Maid in China."
	icon = 'icons/map_icons/clothing/_clothing.dmi'
	icon_state = "/obj/item/clothing/gloves/maid_arm_covers"
	post_init_icon_state = "maid_arm_covers"
// 	greyscale_config = /datum/greyscale_config/bubber_maid_arm_covers
// 	greyscale_config_worn = /datum/greyscale_config/bubber_maid_arm_covers/worn
	greyscale_config_inhand_left = null
	greyscale_config_inhand_right = null
	greyscale_colors = "#7b9ab5#edf9ff"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/gloves/designer
	name = "designer gloves"
	desc = "A fancy set of bicep-length designer gloves. For those who live a life of luxury, and/or have poor spending habits."
// 	worn_icon = MODULAR_HANDS_WORN_ICON
	strip_delay = 4 SECONDS
	equip_delay_other = 2 SECONDS
	icon = 'icons/map_icons/clothing/_clothing.dmi'
	icon_state = "/obj/item/clothing/gloves/designer"
	post_init_icon_state = "designer"
	greyscale_config = /datum/greyscale_config/designer_gloves
	greyscale_config_worn = /datum/greyscale_config/designer_gloves/worn
	greyscale_colors = "#2F2E31"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/gloves/recolorable
	name = "gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon = 'icons/map_icons/clothing/_clothing.dmi'
	icon_state = "/obj/item/clothing/gloves/recolorable"
	post_init_icon_state = "gloves"
	greyscale_config = /datum/greyscale_config/recolorable_gloves
	greyscale_config_worn = /datum/greyscale_config/recolorable_gloves/worn
	greyscale_colors = "#252525"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/gloves/recolorable/fingerless
	name = "fingerless gloves"
	desc = "A pair of gloves. These ones are fingerless."
	icon_state = "/obj/item/clothing/gloves/recolorable/fingerless"
	post_init_icon_state = "gloves_fingerless"
	greyscale_config = /datum/greyscale_config/recolorable_gloves/fingerless
	greyscale_config_worn = /datum/greyscale_config/recolorable_gloves/fingerless/worn
	clothing_traits = list(TRAIT_FINGERPRINT_PASSTHROUGH)


/obj/item/clothing/gloves/recolorable/fingerless/long
	name = "long fingerless gloves"
	desc = "A pair of gloves. These ones are fingerless, and have extra long cuffs."
	icon_state = "/obj/item/clothing/gloves/recolorable/fingerless/long"
	post_init_icon_state = "gloves_fingerless_long"
	greyscale_config = /datum/greyscale_config/recolorable_gloves/fingerless_long
	greyscale_config_worn = /datum/greyscale_config/recolorable_gloves/fingerless_long/worn


/obj/item/clothing/gloves/recolorable/long
	name = "long gloves"
	desc = "A pair of gloves. These ones have extra long cuffs."
	icon_state = "/obj/item/clothing/gloves/recolorable/long"
	post_init_icon_state = "gloves_long"
	greyscale_config = /datum/greyscale_config/recolorable_gloves/long
	greyscale_config_worn = /datum/greyscale_config/recolorable_gloves/long/worn

