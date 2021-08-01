org &8000
	ld a,(&9000)
	ld bc,(&9001)

	cp 0
	jr z,MathAdd ; an to cp einai 0 kane tn sinarthsh MathAdd 
	cp 1
	jr z,MathSub ; an to cp einai 1 kane tn sinarthsh MathSub
	cp 2
	jr z,MathMult ; an to cp einai 2 kane tn sinarthsh MathMult 
	cp 3
	jr z,MathDiv ; an to cp einai 3 kane tn sinarthsh MathDiv

	ld a,0
SaveResult: ; sinarthsh pou kanei load ston register
	ld (&9003),a
ret

MathAdd:
	ld a,c ;load 2 arithmous tis epologhs mas
	add b ;prosthesh kai apothikeush sto b
jr SaveResult ;kane jump stn sinarthsh SaveResult

MathSub:
	ld a,b
	neg
	add c
jr SaveResult

MathMult:
	ld a,b
	cp 0 ;an kapoio einai 0 tote phda sthn sinarthsh
	jr z,SaveResult
	ld a,0

MathMultAgain:
	add c ;alliws prosthese oses fores einai
	djnz MathMultAgain
jr SaveResult

MathDiv:
	ld a,c
	cp 0 ;an kapoio einai 0 tote phda sthn sinarthsh
	jr z,SaveResult
	ld d,0

MathDivAgain:
	sub b ; alliws afairese to b kai au3hse to phliko
	inc d
	jr nc,MathDivAgain
	dec d
	ld a,d
jr SaveResult