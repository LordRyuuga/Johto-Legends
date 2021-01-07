	object_const_def ; object_event constants
	const MAHOGANYGYM_PRYCE
	const MAHOGANYGYM_BUENA1
	const MAHOGANYGYM_BUENA2
	const MAHOGANYGYM_ROCKER3
	const MAHOGANYGYM_GYM_GUY

MahoganyGym_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_GYM_GUIDE_STOPS_YOU

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Blizzard, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext PryceText_After
	waitbutton
	closetext
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	readvar VAR_BADGES
	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue PryceScript_Defeat
	setevent EVENT_BEAT_SKIER_BRANDY
	setevent EVENT_BEAT_SKIER_PAM
	setevent EVENT_BEAT_BOARDER_SONNY
	writetext PryceText_GlacierBadgeSpeech
	buttonsound
	verbosegiveitem TM_ICY_WIND
	iffalse MahoganyGym_NoRoomForIcyWind
	setevent EVENT_GOT_TM16_ICY_WIND
	writetext PryceText_IcyWindSpeech
	waitbutton
	closetext
	setscene SCENE_GYM_GUIDE_STOPS_YOU
	end

PryceScript_Defeat:
	writetext PryceText_GoodLooks
	waitbutton
MahoganyGym_NoRoomForIcyWind:
	closetext
	end

MahoganyGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets

TrainerSkierBrandy:
	trainer SKIER, BRANDY, EVENT_BEAT_SKIER_BRANDY, SkierBrandySeenText, SkierBrandyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierBrandyAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierPam:
	trainer SKIER, PAM, EVENT_BEAT_SKIER_PAM, SkierPamSeenText, SkierPamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierPamAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderSonny:
	trainer BOARDER, SONNY, EVENT_BEAT_BOARDER_SONNY, BoarderSonnySeenText, BoarderSonnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderSonnyAfterBattleText
	waitbutton
	closetext
	end

MahoganyGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuyWinScript
	writetext MahoganyGymGuyText
	waitbutton
	closetext
	end

.MahoganyGymGuyWinScript:
	writetext MahoganyGymGuyWinText
	waitbutton
	closetext
	end

GymGuyStopsYou1Script:
	applymovement MAHOGANYGYM_GYM_GUY, StopsYouMovement1
	turnobject PLAYER, RIGHT
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female1
	opentext
	writetext ByTheWay1Text
	waitbutton
	closetext
	applymovement MAHOGANYGYM_GYM_GUY, GoesBackMovement1
	turnobject MAHOGANYGYM_GYM_GUY, DOWN
	setscene SCENE_DEFAULT
	end

.Female1:
	opentext
	writetext ByTheWay2Text
	waitbutton
	closetext
	applymovement MAHOGANYGYM_GYM_GUY, GoesBackMovement1
	turnobject MAHOGANYGYM_GYM_GUY, DOWN
	setscene SCENE_DEFAULT
	end

GymGuyStopsYou2Script:
	applymovement MAHOGANYGYM_GYM_GUY, StopsYouMovement2
	turnobject PLAYER, RIGHT
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female2
	opentext
	writetext ByTheWay1Text
	waitbutton
	closetext
	applymovement MAHOGANYGYM_GYM_GUY, GoesBackMovement2
	turnobject MAHOGANYGYM_GYM_GUY, DOWN
	setscene SCENE_DEFAULT
	end

.Female2:
	opentext
	waitbutton
	writetext ByTheWay2Text
	waitbutton
	closetext
	applymovement MAHOGANYGYM_GYM_GUY, GoesBackMovement2
	turnobject MAHOGANYGYM_GYM_GUY, DOWN
	setscene SCENE_DEFAULT
	setevent EVENT_RIVAL_AT_LAKE_OF_RAGE
	end

MahoganyGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd gymstatue2

StopsYouMovement1:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

StopsYouMovement2:
	step DOWN
	step DOWN
	step LEFT
	step_end

GoesBackMovement1:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

GoesBackMovement2:
	step RIGHT
	step UP
	step UP
	step_end

PryceText_Intro:
	text "Hurrmph! I heard"
	line "some kids around"
	cont "here are calling"

	para "me Old Man Pryce!"
	line "I may look thrice"
	cont "my age, but 40s"

	para "aren't that old!"
	line "Plus, age is just"
	cont "a number, and it"

	para "sure doesn't"
	line "affect how irresi-"
	cont "stible I am to the"

	para "ladies...Sorry,"
	line "just thinking out"
	cont "loud. I am Pryce,"

	para "the Gym Leader of"
	line "Mahogany Town,"
	cont "although I'm sure"

	para "you already know"
	line "that. If you're"
	cont "here for a"

	para "challenge, this"
	line "not-that-old-yet"
	cont "man is gonna give"

	para "you one!"
	done

PryceText_Blizzard:
	text "Urgh! Age is just"
	line "a number, but it"

	para "still hits like"
	line "a Blizzard!"
	done

PryceText_After:
	text "I became an Ice-"
	line "Type Gym Leader"
	cont "because I enjoyed"

	para "the cold, but it"
	line "sure did a number"
	cont "on my back and"

	para "looks. Anyway,"
	line "you've got skills,"
	cont "kid! Here is the"
	cont "GlacierBadge!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> received"
	line "GlacierBadge."
	done

PryceText_GlacierBadgeSpeech:
	text "That's your first"
	line "Badge, right? You"
	cont "are on your way"

	para "to becoming a"
	line "master. Here, take"
	cont "this TM. It will"


	para "teach your #mon"
	line "a move, and it"
	cont "can be used"

	para "over and over."
	done

PryceText_IcyWindSpeech:
	text "That TM contains"
	line "Icy Wind."

	para "It inflicts damage"
	line "and lowers speed."

	para "It demonstrates"
	line "the harshness of"
	cont "winter."
	done

PryceText_GoodLooks:
	text "I'll keep my"
	line "dashing good"
	cont "looks, even when"

	para "I enter my senior"
	line "years!"

	para "...Hopefully."
	done

BoarderSonnySeenText:
	text "Pryce may be the"
	line "master of Ice, but"
	cont "I'm right behind"
	cont "him in skill."
	done

BoarderSonnyBeatenText:
	text "Apparently I'm"
	line "not."
	done

BoarderSonnyAfterBattleText:
	text "I guess I was too"
	line "focused on snow-"

	para "boarding instead"
	line "of #mon."
	done

SkierBrandySeenText:
	text "The ice is really"
	line "slippery."

	para "You need to think"
	line "before you skate,"

	para "otherwise you'll"
	line "just crash into a"
	cont "wall."
	done

SkierBrandyBeatenText:
	text "Looks like I was"
	line "the one crashing!"
	done

SkierBrandyAfterBattleText:
	text "I once crashed in-"
	line "to a guy on a ski"
	cont "trip."

	para "He's my boyfriend"
	line "now."
	done

SkierPamSeenText:
	text "You should totally"
	line "check out my"
	cont "COOL battling"
	cont "skills!"

	para "Hahaha!"
	line "Get it?"
	done

SkierPamBeatenText:
	text "Hey, CHILL out!"
	line "Hahaha!"
	done

SkierPamAfterBattleText:
	text "Alright, I'm done"
	line "with the puns."

	para "But, you must"
	line "admit, my skills"
	cont "were pretty..."

	para "ICE!"

	para "Hahahaha!"

	para "....I guess you're"
	line "giving me..."

	para "The COLD Shoulder."

	para "Giggle."
	done

MahoganyGymGuyText:
	text "Hows it going,"
	line "champ in the"
	cont "making?"

	para "I'm the Gym Guide"
	line "and I'm here to"
	cont "help you out with"

	para "your Challenge!"
	line "Pryce loves his"
	cont "Ice-Types, and"

	para "he's quite ornery"
	line "if you mention his"
	cont "age!"
	
	para "Ice-Types are weak"
	line "against Fire,"
	cont "Rock, Steel, and"

	para "Fighting Types!"
	line "Dragon and Ground"
	cont "Types don't do the"
	cont "greatest. Also,"

	para "Water and Electric"
	line "moves don't effect"
	cont "them so well."
	done

MahoganyGymGuyWinText:
	text "Pryce is ice-cold,"
	line "but you're firey-"
	cont "hot! You melted"

	para "his Ice-Types!"
	done

ByTheWay1Text:
	text "Oh, by the way,"
	line "your friend"
	cont "Dahlia told me to"

	para "tell you:"

	para "Meet me at the"
	line "Lake of Rage!"

	para "You better go see"
	line "her."
	done

ByTheWay2Text:
	text "Oh, by the way,"
	line "your friend"
	cont "Draco told me to"

	para "tell you:"

	para "Meet me at the"
	line "Lake of Rage!"

	para "You better go see"
	line "him."
	done

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	db 2 ; coord events
	coord_event 4, 17, SCENE_GYM_GUIDE_STOPS_YOU, GymGuyStopsYou1Script
	coord_event 5, 17, SCENE_GYM_GUIDE_STOPS_YOU, GymGuyStopsYou2Script

	db 2 ; bg events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	db 5 ; object events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  5,  9, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierBrandy, -1
	object_event  9, 17, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierPam, -1
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderSonny, -1
	object_event  7, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuyScript, -1
