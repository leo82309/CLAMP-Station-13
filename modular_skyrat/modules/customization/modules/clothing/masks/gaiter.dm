/obj/item/clothing/mask/neck_gaiter
	name = "neck gaiter"
	desc = "A cloth for covering your neck, and usually part of your face too, but that part's optional. Has a small respirator to be used with internals."
	actions_types = list(/datum/action/item_action/adjust)
	alternate_worn_layer = UNDER_UNIFORM_LAYER
	worn_icon = 'modular_skyrat/modules/GAGS/icons/masks.dmi'
	inhand_icon_state = "balaclava"
	icon = 'icons/map_icons/clothing/mask.dmi'
	icon_state = "/obj/item/clothing/mask/neck_gaiter"
	post_init_icon_state = "gaiter"
	greyscale_config = /datum/greyscale_config/neck_gaiter
	greyscale_config_worn = /datum/greyscale_config/neck_gaiter/worn
	greyscale_config_worn_teshari = /datum/greyscale_config/neck_gaiter/worn/teshari
	greyscale_config_worn_muzzled = /datum/greyscale_config/neck_gaiter/worn/muzzled
	greyscale_colors = "#5e6069"
	clothing_flags = BLOCK_GAS_SMOKE_EFFECT|MASKINTERNALS
	w_class = WEIGHT_CLASS_SMALL
	flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT
	visor_flags = BLOCK_GAS_SMOKE_EFFECT | MASKINTERNALS
	visor_flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT
	flags_cover = MASKCOVERSMOUTH
	visor_flags_cover = MASKCOVERSMOUTH
	flags_1 = IS_PLAYER_COLORABLE_1
	interaction_flags_click = NEED_DEXTERITY|ALLOW_RESTING

