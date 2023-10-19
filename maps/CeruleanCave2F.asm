	object_const_def ; object_event constants
	const CERULEANCAVE2F_POKEBALL1
	const CERULEANCAVE2F_POKEBALL2
	const CERULEANCAVE2F_POKEBALL3

CeruleanCave2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave2FPPUp:
	itemball PP_UP

CeruleanCave2FFullRestore:
	itemball FULL_RESTORE

CeruleanCave2FUltraBall:
	itemball ULTRA_BALL

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  1,  3, CERULEAN_CAVE_1F, 3
	warp_event  9,  1, CERULEAN_CAVE_1F, 4
	warp_event  3, 11, CERULEAN_CAVE_1F, 5
	warp_event 19,  7, CERULEAN_CAVE_1F, 6
	warp_event 22,  6, CERULEAN_CAVE_1F, 7
	warp_event 29,  1, CERULEAN_CAVE_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 29,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FPPUp, EVENT_CERULEAN_CAVE_2F_PP_UP
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FFullRestore, EVENT_CERULEAN_CAVE_2F_FULL_RESTORE
	object_event 27,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FUltraBall, EVENT_CERULEAN_CAVE_2F_ULTRA_BALL
