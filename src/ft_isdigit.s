; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 16:26:57 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:29 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_isdigit
;	%rdi : char				c

section .text
	global		_ft_isdigit

_ft_isdigit:
	cmp			rdi, '0'		; if c < '0', return false
	jl			return_false
	cmp			rdi, '9'		; if c > '9', return false
	jg			return_false
	mov			rax, 1			; else, return true
	ret

return_false:
	mov			rax, 0
	ret
