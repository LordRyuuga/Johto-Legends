	object_const_def ; object_event constants
	const ECRUTEAKLUGIASPEECHHOUSE_GRAMPS
	const ECRUTEAKLUGIASPEECHHOUSE_YOUNGSTER
	const ECRUTEAKLUGIASPEECHHOUSE_MOTHER
	const ECRUTEAKLUGIASPEECHHOUSE_CHILD

EcruteakLugiaSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

EcruteakLugiaSpeechHouseGrampsScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseGrampsText

EcruteakLugiaSpeechHouseYoungsterScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseYoungsterText

EcruteakLugiaSpeechHouseMotherScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseMotherText

EcruteakLugiaSpeechHouseDaughterScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseDaughterText

LugiaSpeechHouseRadio:
	jumpstd televisionscript

EcruteakLugiaSpeechHouseGrampsText:
	text "This happened when"
	line "I was young."

	para "The sky suddenly"
	line "turned black. A"

	para "giant flying #-"
	line "mon was blocking"
	cont "out the sun."

	para "I wonder what that"
	line "#mon was? "

	para "It was like a bird"
	line "and a dragon."
	done

EcruteakLugiaSpeechHouseYoungsterText:
	text "Is there really a"
	line "#mon that big?"

	para "If it exists, it"
	line "must be powerful."
	done

EcruteakLugiaSpeechHouseMotherText:
	text "Once again, thank"
	line "you for saving my"
	cont "daughter."
	done

EcruteakLugiaSpeechHouseDaughterText:
	text "Thanks for saving"
	line "me again, cool"
	cont "trainer!"
	done

EcruteakLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ECRUTEAK_CITY, 7
	warp_event  4,  7, ECRUTEAK_CITY, 7

	db 0 ; coord events

	db 1 ; bg events
	bg_event  2,  1, BGEVENT_READ, LugiaSpeechHouseRadio

	db 4 ; object events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseGrampsScript, -1
	object_event  1,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseYoungsterScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseMotherScript, EVENT_AFTER_RESCUING_BURNED_TOWER_GIRL
	object_event  0,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseDaughterScript, EVENT_AFTER_RESCUING_BURNED_TOWER_GIRL
