; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/30 18:52:15 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/30 19:32:50 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_memset
;	%rdi : void *				mem
;	%rsi : char					c
;	%rdx : size_t				n

SECTION .text
	global		_ft_memset

_ft_memset:
	cmp			rdi, 0				; Check mem
	je			end

	push		rcx

									; STOS loop with :
									;  - %rdi : mem, start memory adress
	mov			rax, rsi			;  - %rax : c, char to copy in mem
	mov			rcx, rdx			;  - %rcx : n, iteration number

	cld
	rep			stosb				; do loop

	pop			rcx					; reset values
	mov			rax, rdi			; return mem

end:
	ret
