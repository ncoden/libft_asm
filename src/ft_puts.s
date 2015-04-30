; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:27:27 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 19:34:40 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define			CALL_WRITE		(0x2000004)
%define			STDOUT			(1)

;	ft_putstr
;	%rdi : char	*			s

section .text
	global		_ft_puts
	extern		_ft_putstr
	extern		_ft_putchr

_ft_puts:
	cmp			rdi, 0			; Check s
	je			return_false

	push		di

	call		_ft_putstr		; Put str in rdi

	mov			di, 13
	call		_ft_putchr		; Put chr in %di (faster than %dil)

	pop			di				; reset %rdi value
	mov			rax, 1			; return TRUE
	ret

return_false:
	mov			rax, 0			; return FALSE
	ret
