;Mrwan Alayed - 431107769


include irvine32.inc

.data


stringEnter byte "Enter number : ",0
space byte " ",0



;ex2
arr_0 dword 11111111h,22222222h,33333333h, 0aaaaaaaah,0bbbbbbbbh,0cccccccch,0ddddddddh

.code


main proc
	;ex1
	call find_odd_numbers
    call crlf
    lea ebx , arr_0
    mov esi , LENGTHof arr_0
    call reverse_array
    call print_array_s
    

	exit
main endp


print_array_s proc uses ebx esi 

mov ecx , esi

printArray:

mov eax , [ebx]
call writeHex

lea edx , space

call writeString
add ebx , 4



loop printArray

ret

print_array_s endp

reverse_array proc uses ebx esi 
mov ecx , esi

pusing:

push [ebx]

add ebx , 4

loop pusing


 lea ebx , arr_0
 mov ecx , esi


popping:

pop [ebx]

add ebx , 4

loop popping

ret

reverse_array endp





;ex1
find_odd_numbers proc uses eax edx ecx
    lea edx, stringEnter
    call WriteString
    call ReadDec        
    mov ecx, eax        
    mov eax, 1          

odd:

    call WriteDec

    lea edx, space
    call WriteString

    add eax, 2

    loop odd


    ret
find_odd_numbers endp



end main





