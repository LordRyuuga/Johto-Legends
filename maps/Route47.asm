	object_const_def ; object_event constants
	const ROUTE47_HIKER
	const ROUTE47_YOUNGSTER
	const ROUTE47_COOLTRAINERF
	const ROUTE47_POKEBALL1
	const ROUTE47_POKEBALL2

Route47_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerHikerPhil:
	trainer HIKER, PHIL1, EVENT_BEAT_HIKER_PHIL, HikerPhilSeenText, HikerPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperEmil:
	trainer CAMPER, EMIL, EVENT_BEAT_CAMPER_EMIL, CamperEmilSeenText, CamperEmilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperEmilAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerFTeresa:
	trainer COOLTRAINERF, TERESA, EVENT_BEAT_COOLTRAINERF_TERESA, CooltrainerFTeresaSeenText, CooltrainerFTeresaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFTeresaAfterBattleText
	waitbutton
	closetext
	end

Route47ItemBallScript:
	itemball TM_GIGA_DRAIN

Route47ItemBall2Script:
	itemball REVIVE

HikerPhilSeenText:
	text "I like the caves"
	line "here."

	para "As a Hiker, how"
	line "could I not?"
	done

HikerPhilBeatenText:
	text "Dang!"
	done

HikerPhilAfterBattleText:
	text "You should give"
	line "spelunking a try."

	para "Just don't get"
	line "crushed by a rock."

	para "Not very fun, I"
	line "assure you."
	done

CamperEmilSeenText:
	text "I'm going to catch"
	line "a bunch of #mon"
	cont "at the Wild Area."

	para "How about you?"
	done

CamperEmilBeatenText:
	text "I need some"
	line "better #mon."
	done

CamperEmilAfterBattleText:
	text "I love my #mon,"
	line "but I want some"
	cont "better fighters,"
	cont "too."
	done

CooltrainerFTeresaSeenText:
	text "This place is"
	line "nature at its"
	cont "finest."
	done

CooltrainerFTeresaBeatenText:
	text "Wow! That was a"
	line "battle!"
	done

CooltrainerFTeresaAfterBattleText:
	text "The Wild Area is"
	line "gorgeous as well."
	done

Route47_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 67, 21, CLIFFS_EDGE_GATE, 4
	warp_event 53, 21, CLIFF_CAVE, 1
	warp_event 52, 17, CLIFF_CAVE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 59, 26, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerHikerPhil, -1
	object_event 37, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperEmil, -1
	object_event 23, 4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerFTeresa, -1
	object_event 8,  6,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47ItemBallScript, EVENT_GOT_TM52_ENERGY_BALL
	object_event 39, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47ItemBall2Script, EVENT_ROUTE_47_REVIVE
