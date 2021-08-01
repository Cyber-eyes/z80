PrintChar equ &BB5A ;entolh print
org &8000
	ld a,'c' ;o accumulator ginetai iso me mia metavlhth
	Call PrintChar
	ld a,'y'
	Call PrintChar
	ld a,'b'
	Call PrintChar
	ld a,'e'
	Call PrintChar
	ld a,'r'
	Call PrintChar
	ld a,'-'
	Call PrintChar
	ld a,'e'
	Call PrintChar
	ld a,'y'
	Call PrintChar
	ld a,'e'
	Call PrintChar
	ld a,'s'
	Call PrintChar
ret

	