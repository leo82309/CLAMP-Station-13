/obj/item/clothing/under/greyscale/overalls
	name = "turtleneck with overalls"
	desc = "Overalls worn over a turtleneck. A combination providing comfort and coverage... or, at the least, the coverage."
	icon = 'icons/map_icons/clothing/under/_under.dmi'
	icon_state = "/obj/item/clothing/under/greyscale/overalls"
	post_init_icon_state = "overalls"
	greyscale_config = /datum/greyscale_config/sus_overalls
	greyscale_config_worn = /datum/greyscale_config/sus_overalls/worn
	greyscale_config_worn_digi = /datum/greyscale_config/sus_overalls/worn/digi
	greyscale_colors = "#787878#252525#CCCED1"
	flags_1 = IS_PLAYER_COLORABLE_1
	can_adjust = TRUE


/obj/item/clothing/under/greyscale/overalls/skirt
	name = "turtleneck with overalls-skirt"
	desc = "An overalls-skirt worn over a turtleneck. A combination providing comfort and coverage... or, at the least- no, wait, this doesn't really provide either."
	icon_state = "/obj/item/clothing/under/greyscale/overalls/skirt"
	post_init_icon_state = "overalls_skirt"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	body_parts_covered = CHEST|GROIN
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON | CLOTHING_BIG_LEGS_MASK
	gets_cropped_on_taurs = FALSE


/obj/item/clothing/under/greyscale/turtleneck
	name = "turtleneck with pants"
	desc = "A rather comfortable turtleneck worn with pants. Talk about robust threads."
	icon = 'icons/map_icons/clothing/under/_under.dmi'
	icon_state = "/obj/item/clothing/under/greyscale/turtleneck"
	post_init_icon_state = "turtleneck"
	greyscale_config = /datum/greyscale_config/turtlenecks
	greyscale_config_worn = /datum/greyscale_config/turtlenecks/worn
	greyscale_config_worn_digi = /datum/greyscale_config/turtlenecks/worn/digi
	greyscale_colors = "#787878#252525"
	can_adjust = TRUE
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/greyscale/turtleneck/skirt
	name = "turtleneck with skirt"
	desc = "A rather comfortable turtleneck worn with a skirt. A skirtleneck, if you would."
	icon_state = "/obj/item/clothing/under/greyscale/turtleneck/skirt"
	post_init_icon_state = "skirtleneck"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	body_parts_covered = CHEST|GROIN
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON | CLOTHING_BIG_LEGS_MASK
	gets_cropped_on_taurs = FALSE

