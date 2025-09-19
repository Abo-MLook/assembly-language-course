;Mrwan Alayed - 431107769


include irvine32.inc

.data
;ex 4-a
sourceSring byte "Copy this string",0
targetString byte LENGTHOF sourceSring Dup(?)

count dword 1

.code
main proc

mov eax , 0

;ex 4-b
lea ebx,sourceSring ; the source address of it in ebx
lea ebp ,targetString ; the target address of it in ebx

mov ecx, LENGTHOF sourceSring ; counter

copy1:       ;loop start
mov al,[ebx]
mov [ebp],al

inc ebx
inc ebp

loop copy1    ;loop end


;ex 4-c

lea edx ,sourceSring
call writeString

call crlf

lea edx ,targetString
call writeString

call crlf




;-----------------------------

mov ecx , 10
mov eax , 1

A1:

; --
call writeDec

inc eax
loop A1


;;ex 5
mov esi ,1
mov ecx,10

outer: ;;outer start

push ecx ; 8

call  crlf

mov ecx,10 ; 10
mov count,1			;  for reapeting count to start from 1 so it loop to 10 in inner

inner: ;; inner start

mov eax , count
mul esi
call writeDec
mov al," "
call writeChar

inc count

loop inner ;; inner end

inc esi  ; to be the multibaction of 1 .... 10 , 1*[1..10] , 2*[1..10] .... etc

pop ecx ;  9

loop outer ;;outer end

	exit
main endp
end main