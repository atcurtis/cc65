;
; void clrscr (void);
;

	.export		_clrscr

	.include	"bbc.inc"

.proc	_clrscr
	lda	#$16
	jsr	OSWRCH
	lda	MODE
	jmp	OSWRCH
.endproc
