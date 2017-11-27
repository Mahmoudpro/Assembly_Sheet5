.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
g1 DWORD ?
g2 DWORD ?
g3 DWORD ?
g4 DWORD ?

w1 DWORD ?
w2 DWORD ?
w3 DWORD ?
w4 DWORD ?

prompt1 BYTE 	"Enter grade 1", 0
prompt2 BYTE 	"Enter grade 2", 0
prompt3 BYTE 	"Enter grade 3", 0
prompt4 BYTE 	"Enter grade 4", 0

promptw1 BYTE 	"Enter weight 1", 0
promptw2 BYTE 	"Enter weight 2", 0
promptw3 BYTE 	"Enter weight 3", 0
promptw4 BYTE 	"Enter weight 4", 0

WeightedSum BYTE "The weighted sum is ", 0
TheSumOfWeights BYTE "The sum of weights is ", 0
average BYTE "The weighted average is ", 0



in_num  BYTE 40 DUP(? )


result BYTE 11 DUP(? ), 0

.CODE
_MainProc PROC
input prompt1, in_num, 40
atod in_num
mov g1, eax
input promptw1, in_num, 40
atod in_num
mov w1, eax

input prompt2, in_num, 40
atod in_num
mov g2, eax
input promptw2, in_num, 40
atod in_num
mov w2, eax

input prompt3, in_num, 40
atod in_num
mov g3, eax
input promptw3, in_num, 40
atod in_num
mov w3, eax

input prompt4, in_num, 40
atod in_num
mov g4, eax
input promptw4, in_num, 40
atod in_num
mov w4, eax


mov eax, g1
mul w1
mov g1, eax

mov eax, g2
mul w2
mov g2, eax

mov eax, g3
mul w3
mov g3, eax

mov eax, g4
mul w4
mov g4, eax


mov eax, g1
add eax, g2
add eax, g3
add eax, g4
mov g1, eax


mov eax, w1
add eax, w2
add eax, w3
add eax, w4
mov w1, eax


mov edx, 0
mov eax, g1
mov ecx, w1
div ecx

dtoa result, g1
output WeightedSum, result

dtoa result, w1
output TheSumOfWeights, result

dtoa result, eax
output average, result


mov eax, 0
ret
_MainProc ENDP
END
