/obj/item/toy/plush/nova/donator/bon
	name = "\improper Bon plushie"
	desc = "Bonnie Bon, your favorite hot bully in plush! Push her belly to make it pop! Bonbonbonbonbon..."
	icon_state = "plushie_bon"
	gender = FEMALE
	squeak_override = list(
		'modular_skyrat/modules/emotes/sound/voice/slime_pop.ogg' = 1,
	)


/obj/item/toy/plush/nova/donator/chunko/andrew
	name = "chunko fop green and orange bunny"
	desc = "An 'adorable', if big eyed rabbit girl(?). \
			This one is green and orange. Produced by the Chunko Fop Company <b><i>TM</i></b>. Spits out various Bunnies of dubious existance."
	icon_state = "plushie_pfandrew"
	gender = MALE
	attack_verb_continuous = list(
		"pats",
		"hugs",
		"scolds",
		"pets",
		)
	attack_verb_simple = list(
		"pat",
		"hug",
		"scold",
		"pet",
		)
	squeak_override = list(
		'sound/mobs/non-humanoids/mouse/mousesqueek.ogg' = 1,
		'modular_skyrat/modules/emotes/sound/voice/mothsqueak.ogg' = 1,
		)
	// All lowercase messages are intentional
	