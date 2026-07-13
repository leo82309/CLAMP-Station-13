/obj/item/clothing/under/dress
	body_parts_covered = CHEST|GROIN	//For reference
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY //For reference - We dont want to cut a random hole in dresses
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON	//For reference - keep in mind some dresses will need adjusted for digi thighs - hence the link below
	worn_icon_digi = SKIRTS_DRESSES_DIGIFILE
	worn_icon_teshari = 'modular_skyrat/master_files/icons/mob/clothing/under/skirts_dresses_teshari.dmi'
	gets_cropped_on_taurs = FALSE
	//God bless the skirt being a subtype of the dress, only need one worn_digi_icon definition

/obj/item/clothing/under/dress/skyrat
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/skirts_dresses.dmi'
	icon_state = null
	post_init_icon_state = null
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/skirts_dresses.dmi'
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null

/obj/item/clothing/under/dress/skirt/skyrat	//Just so they can stay under TG's skirts in case code needs subtypes of them (also SDMM dropdown looks nicer like this)
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/skirts_dresses.dmi'
	icon_state = null
	post_init_icon_state = null
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/skirts_dresses.dmi'
	// TG gave these greyscales but ours don't get them yet
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null

//TG's icons only have a dress.dmi, but that means its not ABC-sorted to be beside shorts_pants_shirts.dmi. So its skirts_dresses for us.

/*
*	TG DIGI VERSION DRESSES
*/
/obj/item/clothing/under/dress/striped
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skirt/plaid
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/*
*	Skirts
*/

/obj/item/clothing/under/dress/skirt/skyrat/swept
	name = "swept skirt"
	desc = "Formal skirt."
	icon_state = "skirt_swept"
	body_parts_covered = GROIN
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skirt/skyrat/striped_skirt
	name = "Striped Skirt"
	desc = "A red side-slit skirt with stripes! Comes with a matching two-tone bra."
	icon_state = "striped_skirt"
	body_parts_covered = CHEST|GROIN|LEGS
	can_adjust = TRUE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skirt/skyrat/red_skirt
	name = "Red Skirt"
	desc = "An eye-catching knee-length red skirt, with a golden-yellow trim. Comes with a matching two-tone bra."
	icon_state = "red_skirt"
	body_parts_covered = CHEST|GROIN|LEGS
	can_adjust = TRUE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skirt/skyrat/black_skirt
	name = "Black Skirt"
	desc = "A black side-slit skirt with a golden-yellow trim. Screams 'affluent goth'. Comes with a funky-looking matching bra."
	icon_state = "black_skirt"
	body_parts_covered = CHEST|GROIN|LEGS
	can_adjust = TRUE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skirt/skyrat/turtleskirt_knit //Essentially the same as the Turtleneck Skirt but with a different texture
	name = "cableknit skirt"
	desc = "A casual turtleneck skirt, with a cableknit pattern."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/skyrat/turtleskirt_knit"
	post_init_icon_state = "turtleskirt_knit"
	custom_price = PAYCHECK_CREW
// 	greyscale_config = /datum/greyscale_config/turtleskirt_knit
// 	greyscale_config_worn = /datum/greyscale_config/turtleskirt_knit/worn
	greyscale_colors = "#cc0000#5f5f5f"
	flags_1 = IS_PLAYER_COLORABLE_1
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/dress/skirt/skyrat/jean
	name = "jean skirt"
	desc = "Technically, is there much difference between these and jorts? It's just one big hole instead of two. Does that make this a jirt?"
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/skyrat/jean"
	post_init_icon_state = "jean_skirt"
	female_sprite_flags = NO_FEMALE_UNIFORM
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	greyscale_config = /datum/greyscale_config/jean_skirt
	greyscale_config_worn = /datum/greyscale_config/jean_skirt/worn
	greyscale_config_worn_digi = /datum/greyscale_config/jean_skirt/worn/digi
	greyscale_colors = "#787878#723E0E#4D7EAC"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = GROIN

/obj/item/clothing/under/dress/skirt/skyrat/lone_skirt
	name = "skirt"
	desc = "Just a skirt! Hope you have a tanktop to wear with this."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/skyrat/lone_skirt"
	post_init_icon_state = "lone_skirt"
	body_parts_covered = GROIN
	greyscale_config = /datum/greyscale_config/lone_skirt
	greyscale_config_worn = /datum/greyscale_config/lone_skirt/worn
	greyscale_colors = "#5f534a"
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/under/dress/skirt/skyrat/medium
	name = "medium skirt"
	desc = "An appealing medium-length skirt. Top not included."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/skyrat/medium"
	post_init_icon_state = "medium_skirt"
	body_parts_covered = GROIN
	greyscale_config = /datum/greyscale_config/medium_skirt
	greyscale_config_worn = /datum/greyscale_config/medium_skirt/worn
	greyscale_colors = "#3a3c45"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY|FEMALE_UNIFORM_NO_BREASTS
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/under/dress/skirt/skyrat/long
	name = "long skirt"
	desc = "An appealing long skirt. At this point does it qualify as a dress?"
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/skyrat/long"
	post_init_icon_state = "long_skirt"
	body_parts_covered = GROIN|LEGS
	greyscale_config = /datum/greyscale_config/long_skirt
	greyscale_config_worn = /datum/greyscale_config/long_skirt/worn
	greyscale_colors = "#3a3c45"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY|FEMALE_UNIFORM_NO_BREASTS
	alternate_worn_layer = ABOVE_SHOES_LAYER
	flags_1 = IS_PLAYER_COLORABLE_1

/*
*	Dresses
*/

/obj/item/clothing/under/dress/skyrat/short_dress
	name = "short dress"
	desc = "An extremely short dress with a lovely sash and flower - only for those with good self-confidence."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skyrat/short_dress"
	post_init_icon_state = "short_dress"
	greyscale_config = /datum/greyscale_config/short_dress
	greyscale_config_worn = /datum/greyscale_config/short_dress/worn
// 	greyscale_config_worn_digi = /datum/greyscale_config/short_dress/worn/digi
// 	greyscale_config_worn_teshari = /datum/greyscale_config/short_dress/worn/teshari
	greyscale_colors = "#ff3636#363030"
	flags_1 = IS_PLAYER_COLORABLE_1
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/skyrat/pinktutu
	name = "pink tutu"
	desc = "A fluffy pink tutu."
	icon_state = "pinktutu"

/obj/item/clothing/under/dress/skyrat/flower
	name = "flower dress"
	desc = "Lovely dress. Colored like the autumn leaves."
	icon_state = "flower_dress"
	body_parts_covered = CHEST|GROIN|LEGS

/obj/item/clothing/under/dress/skyrat/redformal
	name = "formal red dress"
	desc = "Not too wide flowing, but big enough to make an impression."
	icon_state = "formal_red"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDESHOES

/obj/item/clothing/under/dress/skyrat/countess
	name = "countess dress"
	desc = "A wide flowing dress fitting for a countess; may be prone to catching onto stuff as you pass."
	icon_state = "countess"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDESHOES

/obj/item/clothing/under/dress/skyrat/strapless
	name = "strapless dress"
	desc = "Typical formal wear with no straps, instead opting to be tied at the waist. Most likely will need constant adjustments."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skyrat/strapless"
	post_init_icon_state = "dress_strapless"
	body_parts_covered = CHEST|GROIN|LEGS
	greyscale_config = /datum/greyscale_config/strapless_dress
	greyscale_config_worn = /datum/greyscale_config/strapless_dress/worn
	greyscale_colors = "#cc0000#5f5f5f"
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/under/dress/skyrat/pentagram
	name = "pentagram strapped dress"
	desc = "A soft dress with straps designed to rest as a pentragram. Isn't this against NT's whole \"Authorized Religion\" stuff?"
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skyrat/pentagram"
	post_init_icon_state = "dress_pentagram"
	body_parts_covered = CHEST|GROIN|LEGS
	greyscale_config = /datum/greyscale_config/pentagram_dress
	greyscale_config_worn = /datum/greyscale_config/pentagram_dress/worn
	greyscale_colors = "#403c46"
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/under/dress/skyrat/jute
	name = "Jacarta Dress"
	desc = "A thick dress with a strong rough exterior layer; lined with a soft breathable thin layer. It's loose-fitting, and has a tag inside that says 'Made in Jacarta'."
	icon_state = "jute"
	body_parts_covered = CHEST|GROIN|LEGS
	can_adjust = TRUE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/dress/nova/flower
	name = "flower dress"
	desc = "Lovely dress. Colored like the autumn leaves."
	icon_state = "flower_dress"
	body_parts_covered = CHEST|GROIN|LEGS


/obj/item/clothing/under/dress/nova/formal_pen_skirt
	name = "Formal Pen suit"
	desc = "A standard pencil dress suit. The blouse is thin and cool to the touch for long hours in the office.\
			Clothing by |DarkRilo Apparels|."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/formal_pen_skirt"
	post_init_icon_state = "formal_pen_skirt"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	can_adjust = TRUE
	greyscale_config = /datum/greyscale_config/formal_pen_skirt
	greyscale_config_worn = /datum/greyscale_config/formal_pen_skirt/worn
	greyscale_colors = "#424242#424242"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = CHEST|GROIN|LEGS|ARMS


/obj/item/clothing/under/dress/nova/giant_scarf
	name = "giant scarf"
	desc = "An absurdly massive scarf, worn as the main article of clothing over the body. Ironically, not very suitable for the cold."
	body_parts_covered = CHEST|GROIN|LEGS
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/giant_scarf"
	post_init_icon_state = "giant_scarf"
	greyscale_config = /datum/greyscale_config/giant_scarf
	greyscale_config_worn = /datum/greyscale_config/giant_scarf/worn
	greyscale_colors = "#EEEEEE#bbbbbb"
	female_sprite_flags = NO_FEMALE_UNIFORM
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/nova/midnight_gown
	name = "midnight gown"
	desc = "A seductive gown purpose tailored to show off one's legs."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/midnight_gown"
	post_init_icon_state = "midnight_right"
	greyscale_config = /datum/greyscale_config/midnight_gown
	greyscale_config_worn = /datum/greyscale_config/midnight_gown/worn
	greyscale_config_worn_digi = /datum/greyscale_config/midnight_gown/worn/digi
	greyscale_colors = "#1D253B"
	flags_1 = IS_PLAYER_COLORABLE_1
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
// 	bodyshapes_with_variations = NONE
	body_parts_covered = CHEST|GROIN|LEGS
	can_adjust = FALSE
	alternate_worn_layer = ABOVE_SHOES_LAYER
	gets_cropped_on_taurs = FALSE


/obj/item/clothing/under/dress/nova/pen_skirt
	name = "Pen Skirt"
	desc = "A simple pencil skirt, stretchy and form fitting for both shapely and comfortable bureaucratic needs.\
			Clothing by |DarkRilo Apparels|."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/pen_skirt"
	post_init_icon_state = "pen_skirt"
	greyscale_config = /datum/greyscale_config/pen_skirt
	greyscale_config_worn = /datum/greyscale_config/pen_skirt/worn
	greyscale_colors = "#424242"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = GROIN|LEGS


/obj/item/clothing/under/dress/nova/pentagram
	name = "pentagram strapped dress"
	desc = "A soft dress with straps designed to rest as a pentragram. Isn't this against NT's whole \"Authorized Religion\" stuff?"
	body_parts_covered = CHEST|GROIN|LEGS
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/pentagram"
	post_init_icon_state = "dress_pentagram"
	greyscale_config = /datum/greyscale_config/pentagram_dress
	greyscale_config_worn = /datum/greyscale_config/pentagram_dress/worn
	greyscale_colors = "#403c46"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/nova/pinktutu
	name = "pink tutu"
	desc = "A fluffy pink tutu."
	icon_state = "pinktutu"


/obj/item/clothing/under/dress/nova/short_dress
	name = "short dress"
	desc = "An extremely short dress with a lovely sash and flower - only for those with good self-confidence."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/short_dress"
	post_init_icon_state = "short_dress"
	greyscale_config = /datum/greyscale_config/short_dress
	greyscale_config_worn = /datum/greyscale_config/short_dress/worn
	greyscale_colors = "#ff3636#363030"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/nova/shorter_dress
	name = "Shorter Dress"
	desc = "A pervasive short dress that brings life to any occasion. Short, sleek and alluring.\
			This dress style is courtesy of |DarkRilo Apparels|."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/shorter_dress"
	post_init_icon_state = "shorter_dress"
	greyscale_config = /datum/greyscale_config/shorter_dress
	greyscale_config_worn = /datum/greyscale_config/shorter_dress/worn
	greyscale_colors = "#424242#424242"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = CHEST|GROIN|LEGS


/obj/item/clothing/under/dress/nova/slit_dress
	name = "Slit Dress"
	desc = "An elegant long dress with an alluring thigh high slit. In elegance, you only need show the bare minimum to exude beauty.\
			This dress style is courtesy of |DarkRilo Apparels|."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/slit_dress"
	post_init_icon_state = "slit_dress"
	greyscale_config = /datum/greyscale_config/slit_dress
	greyscale_config_worn = /datum/greyscale_config/slit_dress/worn
	greyscale_colors = "#424242#424242"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = CHEST|GROIN|LEGS


/obj/item/clothing/under/dress/nova/strapless
	name = "strapless dress"
	desc = "Typical formal wear with no straps, instead opting to be tied at the waist. Most likely will need constant adjustments."
	body_parts_covered = CHEST|GROIN|LEGS
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/strapless"
	post_init_icon_state = "dress_strapless"
	greyscale_config = /datum/greyscale_config/strapless_dress
	greyscale_config_worn = /datum/greyscale_config/strapless_dress/worn
	greyscale_colors = "#cc0000#5f5f5f"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/nova/windowed_dress
	name = "windowed dress"
	desc = "A chic dress with a tastefully sewn in 'windowed' effect on the back, that is both alluring and fashionable.\
			This dress style is courtesy of |DarkRilo Apparels|."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/nova/windowed_dress"
	post_init_icon_state = "windowed_dress"
	greyscale_config = /datum/greyscale_config/windowed_dress
	greyscale_config_worn = /datum/greyscale_config/windowed_dress/worn
	greyscale_colors = "#424242#424242"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = CHEST|GROIN|LEGS


/obj/item/clothing/under/dress/skirt/nova/jean
	name = "jean skirt"
	desc = "Technically, is there much difference between these and jorts? It's just one big hole instead of two. Does that make this a jirt?"
	female_sprite_flags = NO_FEMALE_UNIFORM
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
// 	bodyshapes_with_variations = NONE
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/jean"
	post_init_icon_state = "jean_skirt"
	greyscale_config = /datum/greyscale_config/jean_skirt
	greyscale_config_worn = /datum/greyscale_config/jean_skirt/worn
	greyscale_config_worn_digi = /datum/greyscale_config/jean_skirt/worn/digi
	greyscale_colors = "#787878#723E0E#4D7EAC"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/skirt/nova/loincloth
	name = "loincloth"
	desc = "A simple elegant cloth, to use wrapped around your waist and groin."
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/loincloth"
	post_init_icon_state = "loincloth"
	greyscale_config = /datum/greyscale_config/loincloth
	greyscale_config_worn = /datum/greyscale_config/loincloth/worn
	greyscale_colors = "#413069"
	flags_1 = IS_PLAYER_COLORABLE_1
	body_parts_covered = GROIN|LEGS
	has_sensor = NO_SENSORS
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
// 	bodyshapes_with_variations = NONE


/obj/item/clothing/under/dress/skirt/nova/loincloth/loincloth_alt
	name = "shorter loincloth"
	desc = "A simple elegant cloth, to use wrapped around your waist and groin. This one uses a shorter cloth."
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/loincloth/loincloth_alt"
	post_init_icon_state = "loincloth_alt"
	greyscale_config = /datum/greyscale_config/loincloth_alt
	greyscale_config_worn = /datum/greyscale_config/loincloth_alt/worn


/obj/item/clothing/under/dress/skirt/nova/lone_skirt
	name = "skirt"
	desc = "Just a skirt! Hope you have a tanktop to wear with this."
	body_parts_covered = GROIN
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/lone_skirt"
	post_init_icon_state = "lone_skirt"
	greyscale_config = /datum/greyscale_config/lone_skirt
	greyscale_config_worn = /datum/greyscale_config/lone_skirt/worn
	greyscale_colors = "#5f534a"
// 	supports_variations_flags = CLOTHING_BIG_LEGS_MASK
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/skirt/nova/long
	name = "long skirt"
	desc = "An appealing long skirt. At this point does it qualify as a dress?"
	body_parts_covered = GROIN|LEGS
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/long"
	post_init_icon_state = "long_skirt"
	greyscale_config = /datum/greyscale_config/long_skirt
	greyscale_config_worn = /datum/greyscale_config/long_skirt/worn
	greyscale_colors = "#3a3c45"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY|FEMALE_UNIFORM_NO_BREASTS
	alternate_worn_layer = ABOVE_SHOES_LAYER
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/skirt/nova/medium
	name = "medium skirt"
	desc = "An appealing medium-length skirt. Top not included."
	body_parts_covered = GROIN
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/medium"
	post_init_icon_state = "medium_skirt"
	greyscale_config = /datum/greyscale_config/medium_skirt
	greyscale_config_worn = /datum/greyscale_config/medium_skirt/worn
	greyscale_colors = "#3a3c45"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY|FEMALE_UNIFORM_NO_BREASTS
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/under/dress/skirt/nova/mini_skirt
	name = "mini skirt"
	desc = "A hiked up miniskirt, perfect for showing off those legs or cute new socks!"
	body_parts_covered = GROIN
	icon = 'icons/map_icons/clothing/under/dress.dmi'
	icon_state = "/obj/item/clothing/under/dress/skirt/nova/mini_skirt"
	post_init_icon_state = "mini_skirt"
	greyscale_config = /datum/greyscale_config/mini_skirt
	greyscale_config_worn = /datum/greyscale_config/mini_skirt/worn
	greyscale_colors = "#898989#1c1c1c#a21278#eeeeee"
	flags_1 = IS_PLAYER_COLORABLE_1

