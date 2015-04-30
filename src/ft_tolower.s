; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 15:43:05 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:34:54 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_tolower
;	%rdi : char				c

section .text
	global		_ft_tolower

_ft_tolower:
	mov			rax, rdi

	cmp			rdi, 'A'		; if c < 'A', return c
	jl			end
	cmp			rdi, 'Z'		; if c > 'Z', return c
	jg			end

	add			rax, 32			; if 'A' <= c <= 'Z', transform return

end:
	ret