;
; Screen size variables
;

        .export         screensize

        .include        "bbc.inc"

.proc   screensize

	clc
	lda	TEXT_Y1
	sbc	TEXT_Y2
	tay
	clc
	lda	TEXT_X2
	sbc	TEXT_Y1
	tax
	rts

.endproc


