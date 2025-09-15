; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

include irvine32.inc

.data
abyte byte 0AAh
string1 byte "this is the value : ",0
.code

main proc
	mov	eax,100				
	mov ebx,55
	mov ecx,15
	mov edx,200
   mov esi,123

   sub eax,ebx
   add ecx,edx
   sub ecx,esi
   add eax,ecx
   sub eax,19
	

   mov edx,0
   mov edx,offset string1

   mov ecx,0
   mov cl,abyte
	
   call writeString
	call writedec

	call DumpRegs
	exit
main endp
end main