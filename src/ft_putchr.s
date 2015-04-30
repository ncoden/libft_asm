; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:27:27 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 21:38:49 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define			CALL_WRITE		(0x2000004)
%define			STDOUT			(1)

;	ft_putchr
;	%rdi : char				c

section .data
chr:			db 0

section .text
	global		_ft_putchr

_ft_putchr:
	push		rax
	push		rdx
	push		rsi
	push		rdi

	mov	byte	[rel chr], dil		; Put chr in memory

									; Prepare write syscall :
	mov			rdx, 1				; - %rdx, chr lenght = 1
	mov			rsi, [rel chr]		; - %rsi, chr
	mov			rax, CALL_WRITE		; - %rax, command number
	mov			rdi, STDOUT			; - %rdi, out number
	syscall

	pop			rdi					; reset values
	pop			rsi
	pop			rdx
	pop			rax
	ret
