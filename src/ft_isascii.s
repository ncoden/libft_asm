; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:03:54 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:40 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_isascii
;	%rdi : char				c

section .text
	global		_ft_isascii

_ft_isascii:
	cmp			rdi, 0			; if c < 0, return false
	jl			return_false
	cmp			rdi, 127		; if c > 127, return false
	jg			return_false
	mov			rax, 1			; else, return true
	ret

return_false:
	mov			rax, 0
	ret
