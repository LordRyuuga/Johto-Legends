	object_const_def ; object_event constants
	const KOGASROOM_GEN_SURGE

KogasRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SurgesRoomDoors

.LockDoor:
	prioritysjump .SurgesDoorLocksBehindYou
	end

.DummyScene:
	end

.SurgesRoomDoors:
	checkevent EVENT_GEN_SURGES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_GEN_SURGES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $7a ; open door
.KeepExitClosed:
	return

.SurgesDoorLocksBehindYou:
	applymovement PLAYER, SurgesRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_GEN_SURGES_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

SurgeScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_GEN_SURGE
	iftrue SurgeScript_AfterBattle
	writetext SurgeScript_SurgeBeforeText
	waitbutton
	closetext
	winlosstext SurgeScript_SurgeBeatenText, 0
	loadtrainer GEN_SURGE, GEN_SURGE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_GEN_SURGE
	opentext
	writetext SurgeScript_SurgeDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $7a ; open door
	reloadmappart
	closetext
	setevent EVENT_GEN_SURGES_ROOM_EXIT_OPEN
	waitsfx
	end

SurgeScript_AfterBattle:
	writetext SurgeScript_SurgeDefeatText
	waitbutton
	closetext
	end

SurgesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

SurgeScript_SurgeBeforeText:
	text "Attention!..."
	line "At ease!"

	para "I am General Surge"
	line "of the Elite Four."

	para "After the war, the"
	line "League was impres-"
	cont "sed with my skill,"

	para "and gave me this"
	line "position."

	para "I may be retired"
	line "from the military,"
	cont "but my skills are"

	para "still just as"
	line "sharp as they were"
	cont "during war."

	para "My son followed in"
	line "my footsteps, and"
	cont "hopes to be better"
	cont "than me someday."

	para "I'll let him keep"
	line "dreaming. Hahaha!"

	para "Jokes aside, it's"
	line "time for you to"
	cont "face my electrif-"
	cont "ying #mon!"
	done

SurgeScript_SurgeBeatenText:
	text "A job well done."
	done

SurgeScript_SurgeDefeatText:
	text "Surprised to see"
	line "my Zapdos? Caught"
	cont "it during the war."

	para "Saved me a few"
	line "times. You may"
	cont "find one yourself"
	cont "one day."

	para "What? You think"
	line "there's only one"
	cont "in the world? Ha!"

	para "There's multiple,"
	line "you just need to"
	cont "look. Go on, the"
	cont "next member is"
	cont "waiting."
	done

KogasRoom_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 17, WILLS_ROOM, 2
	warp_event  5, 17, WILLS_ROOM, 3
	warp_event  4,  2, BRUNOS_ROOM, 1
	warp_event  5,  2, BRUNOS_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  7, SPRITE_GEN_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SurgeScript_Battle, -1
