; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 15:43:05 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:20 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_isalpha
;	%rdi : char				c
;
;	|... A        Z ... a        z...|

section .text
	global		_ft_isalpha

_ft_isalpha:
	cmp			rdi, 'A'		; if c < 'A', return false
	jl			return_false
	cmp			rdi, 'z'		; if c > 'z', return false
	jg			return_false
	cmp			rdi, 'Z'		; if c <= 'Z', so 'A' <= c <= 'Z'
	jle			return_true
	cmp			rdi, 'a'		; if c >= 'a', so 'a' <= c <= 'z'
	jge			return_true

return_false:
	mov			rax, 0
	ret

return_true:
	mov			rax, 1
	ret
