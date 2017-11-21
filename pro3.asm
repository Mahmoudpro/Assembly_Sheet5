.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	edge  DWORD ?
	edge1 DWORD ?

	prompt1 BYTE "enter the length ",0
	prompt2 BYTE "enter the width ", 0

	input_value BYTE 40 DUP (?)

	display BYTE "the perimeter ",0
	result0 BYTE 11 DUP (?)
.CODE
_MainProc PROC 
	input prompt1,input_value,40
	atod input_value
	imul eax,2
	mov edge ,eax 
	
	input prompt2, input_value, 40
	atod input_value
	imul eax,2
	mov edge1 , eax
	
	add eax,edge 
	dtoa result0 ,eax 
	output display, result0
	mov eax,0
	ret 

_MainProc ENDP
END
