;Author: Padma Gnanapriya


global _start

section .text:

_start:
	mov eax, 0x4		;use the write syscall
	mov ebx, 1		;use stdout as the fd
	mov ecx, message	;use stdout the fd
	mov edx, message_length ;use the message as the buffer
	int 0x80		;invoke the syscall

	; now gracefully exit

	mov eax, 0x1
	mov ebx, 0
	int 0x80
	

section .data:
	message: db "Hello World!", 0xA
	message_length equ $-message

