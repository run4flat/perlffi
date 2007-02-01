; Trampoline for m88k CPU

; Copyright 1995-1997 Bruno Haible, <haible@clisp.cons.org>
;
; This is free software distributed under the GNU General Public Licence
; described in the file COPYING. Contact the author if you don't have this
; or can't live with it. There is ABSOLUTELY NO WARRANTY, explicit or implied,
; on this software.

; Available registers: r13, r10, maybe r11.

text
	align	8
	global	tramp
;	type	tramp,#function
tramp:
	or.u	r11,r0,0x7355
	or	r11,r11,0x4711
	or.u	r13,r0,0xbabe
	or	r13,r13,0xbec0
	jmp	r13
.Lfe1:
;	size	tramp,.Lfe1-tramp
