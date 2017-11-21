.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	num1 WORD ?
	num2 WORD ?
	num3 WORD ?
	num4 WORD ?

	prompt1 BYTE "enter grade 1 ",0
	prompt2 BYTE "enter grade 2 ", 0
	prompt3 BYTE "enter grade 3 ", 0
	prompt4 BYTE "enter grade 4 ", 0

	in_Val BYTE 40 DUP (?)
	display BYTE "the sum ",0
	display1 BYTE "the average", 0
	
	lbl BYTE 11 DUP (?)

.CODE
_MainProc PROC 
	input prompt1,in_val,40
	atod in_val 
	mov num1,ax 

	input prompt2, in_val, 40
	atod in_val
	mov num2, ax
	
	input prompt3, in_val, 40
	atod in_val
	mov num3, ax
	
	input prompt4, in_val, 40
	atod in_val
	mov num4, ax

	mov ax,num1
	add ax,num2
	add ax, num3
	add ax, num4
	
	dtoa lbl, eax
	output display, lbl

	mov bx,4
	cwd
	idiv bx
	
	dtoa lbl, eax
	output display1, lbl
	mov eax,0
	ret
_MainProc ENDP
END 