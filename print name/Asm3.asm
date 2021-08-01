PrintChar equ &BB5A ; entolh print
WaitChar equ &BB06 ; entolh na perimenei mexri na dwsw input
org &8000
	call WaitChar
	Call PrintChar
	call test ;kalw sinarthsh
	ret
test: ; sinarthsh
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

	