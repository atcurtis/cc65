;
; char cgetc (void);
;

        .export         _cgetc

        .include        "bbc.inc"

.proc	_cgetc
	jsr	OSRDCH
	cmp	#$0d		;\r
	bne	Lecho
	jsr	OSWRCH		;echo \r on input
	lda	#$0a		;map \r to \n on input
Lecho:
	jsr	OSWRCH      ;echo chars on input
	tax
;        jmp ext         ;sign extend char
	rts
.endproc
