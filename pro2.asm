.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	x DWORD ?
	y DWORD ?
	z DWORD ?
	prompt1 BYTE "enter x ", 0
	prompt2 BYTE "enter y ", 0
	prompt3 BYTE "enter z ", 0
	input_value BYTE 40 DUP(? )
	display BYTE "the value ", 0
	result1 DWORD ?
	result2 DWORD ?
.CODE
_MainProc PROC
	input prompt1, input_value, 40
	atod input_value
	mov x, eax

	input prompt2, input_value, 40
	atod input_value
	add eax, x
	 
	imul eax,2

	mov result1,eax
	input prompt3, input_value, 40
	atod input_value
	add eax,result1 

	dtoa result2,eax 
	output display,result2
_MainProc ENDP
END