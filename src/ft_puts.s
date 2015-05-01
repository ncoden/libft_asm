; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:27:27 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/01 17:29:46 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define			CALL_WRITE			(0x2000004)
%define			STDOUT				(1)

;	ft_puts
;	%rdi : char	*			s

SECTION .text
	extern		_ft_putstr
	extern		_ft_putchr

	global		_ft_puts

_ft_puts:
	cmp			rdi, 0				; Check s
	je			return_false

	push		rdi

	call		_ft_putstr			; Print str in %rdi

	mov			rdi, 10
	call		_ft_putchr			; Print chr in %rdi

	pop			rdi					; Reset used registers
	mov			rax, 1				; Return TRUE
	ret

return_false:
	mov			rax, 0				; Return FALSE
	ret
