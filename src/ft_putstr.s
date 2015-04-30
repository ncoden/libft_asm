; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:27:27 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 20:16:05 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define			CALL_WRITE		(0x2000004)
%define			STDOUT			(1)

;	ft_puts
;	%rdi : char	*			s

section .text
	global		_ft_putstr
	extern		_ft_strlen

_ft_putstr:
	cmp			rdi, 0			; Check s
	je			end

	push		rax
	push		rdx
	push		rsi

								; Prepare write syscall :
	call		_ft_strlen
	mov			rdx, rax		; - %rdx, str lenght
	mov			rsi, rdi		; - %rsi, str
	mov			rax, CALL_WRITE	; - %rax, command number
	mov			rdi, STDOUT		; - %rdi, out number
	syscall

	mov			rdi, rsi		; reset values
	pop			rsi
	pop			rdx
	pop			rax

end:
	ret
