/datum/reagent/consumable/ethanol/detcoffee
	name = "Joe"
	description = "Bitter, black, and tasteless. I was halfway down my third mug that day, and all the way down on my luck."
	color = "#18150B" // Dark coffee color
	boozepwr = 5
	taste_description = "boiled dirt and cheap whiskey"
	nutriment_factor = 0
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	metabolized_traits = list(TRAIT_STIMULATED)
	overdose_threshold = 80

/datum/reagent/consumable/ethanol/detcoffee/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	// Coffee caffeine effects:
	affected_mob.adjust_dizzy(-10 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_drowsiness(-6 SECONDS * REM * seconds_per_tick)
	affected_mob.AdjustSleeping(-4 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_bodytemperature(25 * REM * TEMPERATURE_DAMAGE_COEFFICIENT * seconds_per_tick, 0, affected_mob.get_body_temp_normal())


// The Recipe!
/datum/chemical_reaction/detcoffee
	// 5 parts coffee + 5 parts whiskey = 10 parts Joe
	results = list(/datum/reagent/consumable/ethanol/detcoffee = 10)
	required_reagents = list(/datum/reagent/consumable/coffee = 5, /datum/reagent/consumable/ethanol/whiskey = 5)
	mix_message = "<span class='notice'>The coffee and whiskey mix together into a grim, dark brew.</span>"
