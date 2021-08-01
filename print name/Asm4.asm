PrintChar equ &BB5A ; entolh print
org &8000
	ld hl,introdaction
	call printstring
ret

printstring:
	ld a,(hl)
	cp 255 ;elegxos me to 255
	ret z ;an einai 255 epistrefei 0
	inc hl ;alliws au3anoume to hl kata 1
	call PrintChar ;to emfanizoume
jr printstring ;jamp stin sinarthsh

introdaction:
	db 'I am cyber-eyes bitches',255 ;String end with 255