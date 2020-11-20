;joenote - rebalanced prizes
PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
IF DEF(_RED)
	db NIDORINA
ENDC
IF (DEF(_BLUE) || DEF(_GREEN))
	db NIDORINO
ENDC
	db "@"

PrizeMenuMon1Cost:
IF DEF(_RED)
	coins 180
	coins 500
ENDC
IF (DEF(_BLUE) || DEF(_GREEN))
	coins 120
	coins 750
ENDC
	coins 1200
	db "@"

PrizeMenuMon2Entries:
IF DEF(_RED)
	db SCYTHER
	db DRATINI
ENDC
IF (DEF(_BLUE) || DEF(_GREEN))
	db PINSIR
	db DRATINI
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
IF DEF(_RED)
	coins 2500
	coins 5200
	coins 9999
ENDC
IF (DEF(_BLUE) || DEF(_GREEN))
	coins 2800
	coins 4600
	coins 6500
ENDC
	db "@"

PrizeMenuTMsEntries:
	db TM_24
	db TM_14
	db TM_15
	db "@"

PrizeMenuTMsCost:
	coins 3300
	coins 5500
	coins 7700
	db "@"
