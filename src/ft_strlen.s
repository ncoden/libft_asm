; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:54:14 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 19:35:20 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_strlen
;	%rdi : char	*			s

section .text
	global		_ft_strlen

_ft_strlen:
	cmp			rdi, 0			; Check s
	je			return_false

	push		rdi

	sub			al, al
	sub			rcx, rcx
	not			rcx

	cld
	repne		scasb

	not			rcx
	sub			rcx, 1

	pop			rdi
	mov			rax, rcx
	ret

return_false:
	mov			rax, 0
	ret
