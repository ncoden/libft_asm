; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 17:03:54 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:45 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_isprint
;	%rdi : char				c

section .text
	global		_ft_isprint

_ft_isprint:
	cmp			rdi, ' '		; if c < ' ', return false
	jl			return_false
	cmp			rdi, '~'		; if c > '~', return false
	jg			return_false
	mov			rax, 1			; else, return true
	ret

return_false:
	mov			rax, 0
	ret
