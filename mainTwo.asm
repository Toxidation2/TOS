[bits 16]
[org 0x7e00]

main:
        mov si, string
        jmp printf

printf: 
        lodsb
        cmp al, 00h
        mov ah, 0x0e
        int 10h
        jz .return
        jmp printf

.return:
        ret

string: db "Hello world! #1", 0

times 510-($-$$) db 0
