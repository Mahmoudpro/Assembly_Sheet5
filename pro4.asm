.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p1 BYTE "enter the number of pennies", 0
	p2 BYTE "enter the number of nickels", 0
	p3 BYTE "enter the number of dimes", 0
	p4 BYTE "enter the number of quarter", 0
	p5 BYTE "enter the number of fifty_cent", 0
	p6 BYTE "enter the number of dollar", 0
	
	p DWORD ?
	n DWORD ?
	dim DWORD ?
	q DWORD ?
	f DWORD ?
	dol DWORD ?
	in_val BYTE 40 DUP (?)
	display BYTE "the value is ", 0
	result BYTE 11 DUP(? ), " dollars "
	remainder BYTE 11 DUP(? ), " cents"
.CODE
_MainProc PROC 
	input p1,in_val,40
	atod in_val
	mov p,eax 

	input p2, in_val, 40
	atod in_val
	imul eax,5
	add p,eax 
	
	input p3, in_val, 40
	atod in_val
	imul eax, 10
	add p, eax

	input p4, in_val, 40
	atod in_val
	imul eax, 25
	add p, eax
	
	input p5, in_val, 40
	atod in_val
	imul eax, 50
	add p, eax

	input p1, in_val, 40
	atod in_val
	imul eax,100 
	add p, eax

	mov eax, p
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