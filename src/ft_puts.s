; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:27:27 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/02 15:18:12 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_puts
;	%rdi : char	*			s

SECTION .text
	extern		_ft_putstr
	extern		_ft_putchr

	global		_ft_puts

_ft_puts:
	push		rdi

	cmp			rdi, 0				; Check s
	je			print_null

	call		_ft_putstr			; Print str in %rdi

	mov			rdi, 10
	call		_ft_putchr			; Print chr in %rdi

	jmp			return_true

print_null:
	;mov byte	[rel nullstr], 'x'
	lea		rdi, [rel nullstr]		; Print "(null)\n"
	call		_ft_putstr

return_true:
	pop			rdi					; Reset used registers
	mov			rax, 1				; Return TRUE
	ret

SECTION .data
	nullstr		db "(null)", 10
