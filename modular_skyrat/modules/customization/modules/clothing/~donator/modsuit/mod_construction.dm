/obj/item/mod/construction/plating/joisuit
	name = "\improper JOISuit Modification Core"
	desc = "An amalgamation of smart metals that when attached to a MODSuit, slowly assimilates it, \
			wrapping the original in thousands of tiny tendrils to reform the design to that more akin to a Java Operated Intelligence Suit. \
			The core itself feels latex-y, yet it doesn't stick like latex."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	icon_state = "joisuit-plating"
	theme = /datum/mod_theme/joisuit


/obj/item/mod/construction/plating/jumper
	name = "\improper PA-4 MK-7 J.S supply crate"
	desc = "A crate made mostly of titanium with handles on the side to carry. It seems to be pressure sealed and the lid seems to be hydraulically assisted. \
		The inside of the crate opens up and folds out to display an entire toolkit with all the essentials to convert most armor \
		into a Mark 7 PA-7 Variant Jump suit. This crate seems to have the emblem relating to a certain Commando... \
		Perhaps you should return it to the owner where you found it, if you can even lift it."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	icon_state = "jumper-plating"
	theme = /datum/mod_theme/jumper


/obj/item/mod/construction/plating/paragon
	name = "\improper Paragon Plating"
	desc = "A sturdy black storage container wrapped with yellow tape label 'VOID IF TEMPERED, DO NOT PAINT OVER LABEL.” Barcodes, manufacturing details, and safety warnings are stenciled along its sides. \
		Within the box contains several conversion parts packed neatly within shape foam, a distinctive glass like helmet visor made out of synthetic crystal laminate with electrical polarized lens matrix, and a manual with detailed instruction \
		necessary to create the Paragon MODsuit."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	icon_state = "paragon-plating"
	theme = /datum/mod_theme/paragon


/obj/item/mod/skin_applier/akari
	name = "nanite MODsuit refitter"
	desc = "A small kit full of nanites designed to refit a MODsuit to Akari's personal design. Only compatible with fused MODsuits due to the refit's reliance on a symbiote."
	icon = 'icons/obj/clothing/modsuit/mod_construction.dmi'
	icon_state = "skinapplier"
	skin = "akari"
	var/list/variant_data = list(
		MOD_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/obj/clothing/modsuit.dmi',
		MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/mob/clothing/modsuit.dmi',
		/obj/item/clothing/head/mod = list(
			UNSEALED_LAYER = HEAD_LAYER,
			UNSEALED_CLOTHING = SNUG_FIT,
			UNSEALED_COVER = HEADCOVERSEYES|PEPPERPROOF,
			UNSEALED_INVISIBILITY = HIDEHAIR|HIDEEYES|HIDESNOUT,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY =  HIDEFACIALHAIR|HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
			SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
		),
		/obj/item/clothing/suit/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY = HIDEJUMPSUIT|HIDETAIL,
			UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
			SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
		),
		/obj/item/clothing/gloves/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
		),
		/obj/item/clothing/shoes/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
			SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
		)
	)


/obj/item/mod/skin_applier/joisuit
	name = "\improper Java Operated Intelligence Suit 'JOISuit'"
	desc = "An amalgamation of smart metals that when attached to a MODSuit, slowly assimilates it, \
			wrapping the original in thousands of tiny tendrils to reform the design to that more akin to a Java Operated Intelligence Suit. \
			The core itself feels latex-y, yet it doesn't stick like latex."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	icon_state = "joisuit-plating"
	skin = "joisuit"
	/// The theme type to pull metadata (name and description) from.
	var/datum/mod_theme/theme_type = /datum/mod_theme/joisuit
	var/list/variant_data = list(
		MOD_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/obj/clothing/modsuit.dmi',
		MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/mob/clothing/modsuit.dmi',
		/obj/item/clothing/head/mod = list(
			UNSEALED_CLOTHING = SNUG_FIT,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE|HEADINTERNALS,
			UNSEALED_INVISIBILITY = HIDEEARS|HIDEHAIR,
			SEALED_INVISIBILITY = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT,
			SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
		),
		/obj/item/clothing/suit/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY = HIDEJUMPSUIT|HIDEBELT,
			UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
			SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
		),
		/obj/item/clothing/gloves/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
		),
		/obj/item/clothing/shoes/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
			SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
		)
	)
	// Specific variant data used when the skin is applied to a mining MODsuit.
	var/list/mining_variant_data = list(
	MOD_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/obj/clothing/modsuit.dmi',
	MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/mob/clothing/modsuit.dmi',
		/obj/item/clothing/head/mod = list(
			UNSEALED_CLOTHING = SNUG_FIT,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE|HEADINTERNALS,
			UNSEALED_INVISIBILITY = HIDEEARS|HIDEHAIR,
			SEALED_INVISIBILITY = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT,
			SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES,
			UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
		),
		/obj/item/clothing/suit/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY = HIDEJUMPSUIT|HIDEBELT,
			UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
			SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
		),
		/obj/item/clothing/gloves/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
		),
		/obj/item/clothing/shoes/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
			SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
		)
	)


/obj/item/mod/skin_applier/jumper
	name = "\improper PA-4 MK-7 J.S supply crate"
	desc = "A crate made mostly of titanium with handles on the side to carry. \
			It seems to be pressure sealed and the lid seems to be hydraulically assisted. \
			The inside of the crate opens up and folds out to display an entire toolkit with all the essentials to convert most armor into a Mark 7 PA-7 Variant Jump suit. \
			This crate seems to have the emblem relating to a certain Commando... Perhaps you should return it to the owner where you found it, if you can even lift it."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	lefthand_file = 'modular_skyrat/master_files/icons/donator/mob/inhands/donator_left.dmi'
	righthand_file = 'modular_skyrat/master_files/icons/donator/mob/inhands/donator_right.dmi'
	icon_state = "jumper-plating"
	skin = "jumper"
	/// The theme type to pull metadata (name and description) from.
	var/datum/mod_theme/theme_type = /datum/mod_theme/jumper
	var/list/variant_data = list(
		MOD_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/obj/clothing/modsuit.dmi',
		MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/mob/clothing/modsuit.dmi',
		/obj/item/clothing/head/mod = list(
			UNSEALED_CLOTHING = SNUG_FIT|THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE|HEADINTERNALS,
			UNSEALED_INVISIBILITY = HIDEFACIALHAIR|HIDEEARS|HIDEHAIR|HIDESNOUT,
			SEALED_INVISIBILITY = HIDEMASK|HIDEEYES|HIDEFACE,
			UNSEALED_COVER = HEADCOVERSMOUTH,
			SEALED_COVER = HEADCOVERSEYES|PEPPERPROOF,
			UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
		),
		/obj/item/clothing/suit/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY = HIDEJUMPSUIT,
			UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
			SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
		),
		/obj/item/clothing/gloves/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
		),
		/obj/item/clothing/shoes/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
			SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
		)
	)


/obj/item/mod/skin_applier/paragon
	name = "\improper Homo Ludens Parts kit 'Paragon'"
	desc = "A sturdy black storage container wrapped with yellow tape label 'VOID IF TEMPERED, DO NOT PAINT OVER LABEL.” Barcodes, manufacturing details, and safety warnings are stenciled along its sides. \
		Within the box contains several conversion parts packed neatly within shape foam, a distinctive glass like helmet visor made out of synthetic crystal laminate with electrical polarized lens matrix, and a manual with detailed instruction \
		necessary to create the Paragon MODsuit."
	icon = 'modular_skyrat/master_files/icons/donator/obj/custom.dmi'
	icon_state = "paragon-plating"
	skin = "paragon"
	/// The theme type to pull metadata (name and description) from.
	var/datum/mod_theme/theme_type = /datum/mod_theme/paragon
	var/list/variant_data = list(
		MOD_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/obj/clothing/modsuit.dmi',
		MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/master_files/icons/donator/mob/clothing/modsuit.dmi',
		/obj/item/clothing/head/mod = list(
			UNSEALED_LAYER = NECK_LAYER,
			UNSEALED_CLOTHING = SNUG_FIT,
			SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE|BLOCK_GAS_SMOKE_EFFECT|HEADINTERNALS,
			UNSEALED_INVISIBILITY = HIDEFACIALHAIR,
			SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
			SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
		),
		/obj/item/clothing/suit/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			SEALED_INVISIBILITY = HIDEJUMPSUIT,
			UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
			SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
		),
		/obj/item/clothing/gloves/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
			SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
		),
		/obj/item/clothing/shoes/mod = list(
			UNSEALED_CLOTHING = THICKMATERIAL,
			SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			CAN_OVERSLOT = TRUE,
			UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
			SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
		)
	)

