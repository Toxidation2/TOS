[bits 16]
[org 0x7c00]

main:
	xor ax, ax
   	mov ds, ax
   	cld
	mov ah, 00h
	mov dl, 00h
	int 13h
	xor bx, bx
	mov ah, 02h
	mov al, 1
	mov ch, 0
	mov cl, 2
	mov dh, 0
	mov dl, 00h
	mov es, bx
	mov bx, 7e00h
	int 13h
	jmp 7e00h

times 510-($-$$) db 0
dw 0xaa55
