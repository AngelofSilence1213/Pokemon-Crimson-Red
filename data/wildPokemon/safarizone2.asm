ZoneMons2: ;Safari Zone North
;joenote - added jynx & tweaked encounter tables
;			-added tauros to bluejp
	db $1E
IF DEF(_RED)
	db 22, NIDORAN_M
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINO
	db 30, NIDORINA
	db 32,VENOMOTH
	db 27,JYNX
	db 26,CHANSEY
	db 28,TAUROS
ELIF DEF(_BLUEJP)
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 30, NIDORINO
	db 32,VENOMOTH
	db 27,TAUROS
	db 26,CHANSEY
	db 28,PINSIR
ELIF (DEF(_BLUE) || DEF(_GREEN))
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 30, NIDORINO
	db 32,VENOMOTH
	db 27,JYNX
	db 26,CHANSEY
	db 28,TAUROS
ENDC
	db $00
