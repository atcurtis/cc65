;
; void cputcxy (unsigned char x, unsigned char y, char x);
; void cputc (char c);
;

	.export		_cputcxy, _cputc
	.export		cputdirect, newline, putchar, putchardirect
	.import		gotoxy

	.include	"bbc.inc"

_cputc = OSASCI

newline = OSNEWL

putchar = OSASCI

cputdirect = OSWRCH

putchardirect = OSWRCH

.proc	_cputcxy
	pha
	jsr	gotoxy
	pla
	jmp	_cputc
.endproc
