; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

include irvine32.inc


.data
; exercise A:  
abyte byte 15 ; A
bbyte byte 51 ; A

aword word 0FAFAH  ;B
adword dword 0CCCCBBBBh;  C
aqword qword 0FFFFFFFFAAAAAAAAh ;D

arr_byte byte 010h , 020h ,030h,040h ; E

my_str byte "Hello ,World!" , 0 ; F

; exercise C:  
arr_1 byte 25 dup(0ffh)
arr_2 word 25 dup(0AAh)
arr_3 dword 25 dup(0cch)


.code
main proc
	
mov edx,0
mov dl,abyte

mov esi,0
mov si,aword

mov edi,0
mov edi,adword

mov ebx,0
mov bl,arr_byte


mov edx,0
mov ecx,0
mov dl,abyte
mov cl,bbyte

mov abyte,cl
mov bbyte,dl




mov edx,0

mov edx,offset my_str






; exercise B-  
mov eax,ecx      ;a-    
mov al,cl

mov al,abyte ;b-
mov bbyte,al ;c=

mov cl,15   ;d-
mov abyte,cl

hex_value =0fffffff5h
bin_value=1010101010b
oct_value=123456o

hex_value1 equ 0fffffff5h  ;;text
bin_value1 equ 1010101010b  
oct_value1 equ 123456o

mov ecx,hex_value



mov eax,33
call DumpRegs
call WriteString
call writedec
	exit
main endp
end main