.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	num DWORD ?
	
	prompt1 BYTE "enter num 1 ",0
	prompt2 BYTE "enter num 2 ", 0
	prompt3 BYTE "enter num 3 ", 0
	input_value BYTE 40 DUP(?)
	display BYTE "the value ",0
	result1 DWORD ?
	result2 DWORD ?
.CODE
_MainProc PROC
	input prompt1, input_value,40
	atod input_value
	mov num,eax

	input prompt2, input_value, 40
	atod input_value
	add eax,num
	
	mov result1 ,eax 
	
	input prompt3, input_value, 40
	atod input_value
	imul eax,2
	 
	
	mov result2,eax

	mov eax,result1
	sub eax,result2
	inc eax
	neg eax 
	dtoa result1, eax
	output display, result1
_MainProc ENDP
END
