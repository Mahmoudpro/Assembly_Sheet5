.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p1 BYTE "enter number pennies", 0
	p2 BYTE "enter number nickels", 0
	p3 BYTE "enter number dimes", 0
	p4 BYTE "enter number quarter", 0
	p5 BYTE "enter number fifty cent", 0
	p6 BYTE "enter number dollar", 0
	p DWORD ?
	n DWORD ?
	r DWORD ?
	display BYTE "the cents is ", 0
	display1 BYTE "the dollars is ", 0
	coin BYTE 11 DUP(? ), " cents"
	result BYTE 11 DUP(? ), " dollars "
	remainder BYTE 11 DUP(? ), " cents"
	
.CODE
_MainProc PROC
	input p1, p, 33
	atod p
	mov p, eax

	input p2, n, 32
	atod n
	
	imul eax,5
	add p, eax

	input p3, n, 32
	atod n
	imul eax,10
	add p, eax

	input p4, n, 32
	atod n
	imul eax, 25
	add p, eax

	input p5, n , 32
	atod n 
	imul eax ,50
	add p, eax

	input p6, n, 32
	atod n
	imul eax,100
	add p, eax
	
	mov eax, p
	mov r,eax 
	dtoa coin,eax
	output display1,coin 

	mov eax,r 
	cdq
	mov ebx, 100
	div ebx

	dtoa result, eax
	dtoa remainder, edx

	output display, result

	mov eax, 0
	ret

_MainProc ENDP
END
