/obj/item/toy/pillow/torapillow
	name = "\improper Shork.INC Body Pillow"
	desc = "A poofy, soft looking pillow depicting a certain sharkette. One side a little less scandalous than the other. At the bottom is a small tag label |DarkRilo Apparels|."
	icon_state = "torapillbod"
	inhand_icon_state = null
	lefthand_file = 'modular_clamp/modules/isolated_items/icons/inhands/items_lefthand.dmi'
	righthand_file = 'modular_clamp/modules/isolated_items/icons/inhands/items_righthand.dmi'
	icon = 'modular_clamp/modules/isolated_items/icons/obj/toys.dmi'
	throw_range = 1

	// Keep track of the original transform matrix
	var/matrix/original_transform

/obj/item/toy/pillow/torapillow/Initialize(mapload)
	. = ..()
	if(!original_transform)
		original_transform = matrix(transform)

	if(!istype(loc, /mob))
		transform = matrix(original_transform).Scale(0.5)

/obj/item/toy/pillow/torapillow/pickup(mob/user)
	. = ..()
	animate(src, transform = original_transform, time = 2, loop = 0)

/obj/item/toy/pillow/torapillow/dropped(mob/user)
	. = ..()
	animate(src, transform = matrix(original_transform).Scale(0.5), time = 2)

/obj/item/toy/pillow/torapillow/attack_self(mob/user)
	adjust_item_style(user)

/obj/item/toy/pillow/torapillow/click_alt(mob/user)
	adjust_item_style(user)
	return CLICK_ACTION_SUCCESS

/obj/item/toy/pillow/torapillow/examine(mob/user)
	. = ..()
	. += span_notice("Alt-click [src] to flip it. It currently shows the '[src.icon_state]' side.")

/// Toggles between flipped/non-flipped
/obj/item/toy/pillow/torapillow/proc/adjust_item_style(mob/user)
	if (icon_state == "torapillbod")
		icon_state = "torapillbod-t"
	else
		icon_state = "torapillbod"
	user.visible_message(span_notice("[user] flips the [src]."))
