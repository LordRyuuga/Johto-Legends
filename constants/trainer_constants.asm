trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	enum_start
CHRIS EQU __enum__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA

	trainerclass WALKER ; 1
	const WALKER1

	trainerclass MILTON ; 2
	const MILTON1

	trainerclass KURT ; 3
	const KURT1

	trainerclass ENOKI ; 4
	const ENOKI1
	const ENOKI2
	const ENOKI3
	const ENOKI4
	const ENOKI5
	const ENOKI6
	const ENOKI7

	trainerclass PRYCE ; 5
	const PRYCE1
	const PRYCE2
	const PRYCE3
	const PRYCE4
	const PRYCE5
	const PRYCE6
	const PRYCE7
	const PRYCE8

	trainerclass BYRON ; 6
	const BYRON1
	const BYRON2
	const BYRON3

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; a
	const OAK

	trainerclass FLORINA ; b
	const FLORINA1

	trainerclass CAL ; c
	const CAL1
	const CAL2
	const CAL3

	trainerclass MARTHA ; d
	const MARTHA1

	trainerclass AGATHA ; e
	const AGATHA1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14
	const ROSS
	const MITCH
	const JED
	const MAC
	const RICH

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const JOEY1
	const TIMMY
	const ALBERT
	const CALEB
	const SAMUEL
	const IAN
	const JOEY2
	const JOEY3
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const JOEY4
	const JOEY5

	trainerclass SCHOOLBOY ; 17
	const FINN
	const PIERCE
	const ALAN1
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKY
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const CHAD5

	trainerclass BIRD_KEEPER ; 18
	const ROD
	const ABE
	const GUNNER
	const THAD
	const TOBY
	const DENIS
	const SAL
	const HANK
	const ROY
	const BORIS
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 19
	const JACKIE
	const ARIELLE
	const VIVIAN
	const CONNIE1
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const DANA1
	const ELLEN
	const CONNIE2
	const CONNIE3
	const DANA2
	const DANA3
	const DANA4
	const DANA5

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b
	const FABIO
	const AJ
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
	const BLAKE
	const BRIAN
	const ERICK
	const ANDY
	const TYLER
	const SEAN
	const KEVIN
	const STEVE
	const ALLEN
	const DARIN

	trainerclass COOLTRAINERF ; 1c
	const TERESA
	const ARIEL
	const FRAN
	const LOLA
	const TINA
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3
	const CARA

	trainerclass BEAUTY ; 1d
	const ASHLEY
	const JACLYN
	const BRENDA
	const CASSIE
	const CAROLINE
	const CARLENE
	const JESSICA
	const RACHAEL
	const ANGELICA
	const KENDRA
	const VERONICA
	const JULIA
	const THERESA
	const VALERIE
	const OLIVIA

	trainerclass POKEMANIAC ; 1e
	const ALVIN
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const BRENT1
	const RON
	const ETHAN
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH
	const BRENT4
	const ALLAN1
	const JARVIS

	trainerclass GRUNTM ; 1f
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22
	const GRUNTM_23
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26
	const GRUNTM_27
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20
	const CROFTON
	const FRANK
	const GREGORY
	const VIRGIL
	const ALFRED

	trainerclass SKIER ; 21
	const BRANDY
	const PAM
	const LUPITA

	trainerclass TEACHER ; 22
	const ABIGAIL
	const HILLARY
	const SHIRLEY
	const CADI
	const CADI2
	const CADI3

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const ANTON
	const COLTON
	const STEVIE
	const WADE1
	const ELMER
	const AL
	const BUZZY
	const ARNIE1
	const KEN
	const WADE2
	const WADE3
	const DOUG
	const ARNIE2
	const ARNIE3
	const WADE4
	const WADE5
	const ARNIE4
	const ARNIE5
	const WAYNE

	trainerclass FISHER ; 25
	const RUSTY
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const FISHER_SHANE
	const FRED
	const AIDAN
	const NOAH
	const LYLE1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const BUTCH
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4

	trainerclass SWIMMERM ; 26
	const HAROLD
	const DERRICK
	const JACKSON
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const PATON
	const DARYL
	const WALTER
	const TONY
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const LEWIS
	const PARKER

	trainerclass SWIMMERF ; 27
	const ANGIE
	const KAITLYN
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const LISA
	const JILL
	const MARY
	const KATIE
	const DAWN
	const TARA
	const NICOLE
	const LORI
	const JODY
	const NIKKI
	const DIANA
	const BRIANA

	trainerclass SAILOR ; 28
	const EUGENE
	const HUEY1
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3
	const HUEY4

	trainerclass SUPER_NERD ; 29
	const DEXTER
	const ERIC
	const GREGG
	const JAY
	const DAVE
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const RUSS
	const NORTON
	const HUGH
	const MARKUS

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE

	trainerclass GUITARIST ; 2b
	const CLYDE
	const VINCENT

	trainerclass HIKER ; 2c
	const ANTHONY1
	const OZZY
	const PHIL1
	const LEONARD
	const ANTHONY2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3
	const ANTHONY4
	const ANTHONY5

	trainerclass BIKER ; 2d
	const BIKER_BENNY
	const KAZU
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const LOCKE
	const EDDIE
	const COREY

	trainerclass FIREBREATHER ; 30
	const CHAZ
	const FARREL
	const NED
	const BURT
	const BILL
	const KELVIN
	const RAY
	const LYLE

	trainerclass JUGGLER ; 31
	const IRWIN1
	const PERCY
	const HORTON
	const IRWIN2
	const IRWIN3
	const IRWIN4

	trainerclass BLACKBELT_T ; 32
	const HIDEO
	const YOSHI
	const SATORU
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI

	trainerclass ARCHER ; 33
	const ARCHER_1
	const ARCHER_2
	const ARCHER_3
	const ARCHER_4

	trainerclass PSYCHIC_T ; 34
	const JORDAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY

	trainerclass PICNICKER ; 35
	const HAYLEE
	const GINA1
	const CHLOE
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3
	const LIZ4
	const LIZ5
	const GINA4
	const GINA5
	const TIFFANY4

	trainerclass CAMPER ; 36
	const CAMPER_GARRET
	const TODD1
	const HOWARD
	const EMIL
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const HARVEY
	const DALE
	const TED
	const TODD2
	const TODD3
	const THOMAS
	const LEROY
	const DAVID
	const JOHN
	const JERRY
	const SPENCER
	const TODD4
	const TODD5
	const QUENTIN

	trainerclass ARIANA ; 37
	const ARIANA_1
	const ARIANA_2

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass MEDIUM ; 39
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 3a
	const GARETH
	const BRODY
	const SONNY

	trainerclass POKEFANM ; 3b
	const BERNARD
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2
	const DEREK3
	const ALEX
	const REX
	const ALLAN

	trainerclass KIMONO_GIRL ; 3c
	const RUI
	const NAOKO2
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 3d
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2

	trainerclass POKEFANF ; 3e
	const BEVERLY1
	const ETHEL1
	const BEVERLY2
	const BEVERLY3
	const GEORGIA
	const JAIME

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41
	const TOBY1
	const CLANCY

	trainerclass GRUNTF ; 42
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5
	const GRUNTF_6
	const GRUNTF_7
	const GRUNTF_8
	const GRUNTF_9

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass RIVAL3 ; 44
	const RIVAL3_A_LARVITAR
	const RIVAL3_A_DRATINI
	const RIVAL3_A_TOTODILE
	const RIVAL3_B_LARVITAR
	const RIVAL3_B_DRATINI
	const RIVAL3_C_LARVITAR
	const RIVAL3_C_DRATINI

	trainerclass RIVAL4 ; 45
	const RIVAL4_A_LARVITAR
	const RIVAL4_A_DRATINI
	const RIVAL4_A_TOTODILE
	const RIVAL4_B_LARVITAR
	const RIVAL4_B_DRATINI
	const RIVAL4_C_LARVITAR
	const RIVAL4_C_DRATINI

	trainerclass BREEDER ; 46
	const EMILY
	const NINA
	const SARAH
	const BRIDGET

	trainerclass HEX_MANIAC ; 47
	const HILDA
	const ZELDA
	const SABRINA2

	trainerclass CHIGUSA ; 48
	const CHIGUSA1
	const CHIGUSA2
	const CHIGUSA3
	const CHIGUSA4
	const CHIGUSA5
	const CHIGUSA6

	trainerclass MASTER ; 49
	const MASTER1

	trainerclass GEN_SURGE ; 4a
	const GEN_SURGE1

	trainerclass DRAGON_KID ; 4b
	const LANCE1

	trainerclass PASSERBY ; 4c
	const MIYAMOTO

	trainerclass MYSTERIOUS ; 4d
	const MIYAMOTO1
	const MIYAMOTO2

	trainerclass TOURIST ; 4e
	const CYNTHIA1
	const CYNTHIA2

	trainerclass ENGINEER ; 4f
	const HARVEY1
	const OSWALD
	const DANTE
	const RUDY

KRIS EQU __enum__
NUM_TRAINER_CLASSES EQU __enum__
