/datum/preferences/refresh_membership()
	. = ..()
	donator_status = !!GLOB.donator_list[parent.ckey]
	max_save_slots = 100
