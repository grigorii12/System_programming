; Linux x86 (32 бита), FASM, UTF-8.
format ELF executable 3
entry start
segment readable executable
start:
    mov eax, 4 ; sys_write
    mov ebx, 1 ; stdout
    mov ecx, message
    mov edx, message_length
    int 0x80
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80
segment readable writeable
message db 'Прозоров', 10, 'Григорий', 10, 'Дмитриевич', 10
message_length = $ - message
