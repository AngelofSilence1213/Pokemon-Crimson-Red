PowerPlantMons:	;joenote - added porygon to Red
	db $0A
	db 21,VOLTORB
	db 21,MAGNEMITE
	db 24,PIKACHU
	db 23,MAGNEMITE
	db 23,VOLTORB
	db 32,MAGNETON
	db 35,MAGNETON
	IF DEF(_ENCRED)
		db 34,ELECTABUZZ
		db 37,ELECTABUZZ
		db 21,PORYGON
	ELSE
		db 33,ELECTABUZZ
		db 33,RAICHU
		db 36,RAICHU
	ENDC
	db $00
