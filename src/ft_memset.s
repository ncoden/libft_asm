; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/30 18:52:15 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/01 16:37:32 by ncoden           ###   ########.fr        ;
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
	rep			stosb				; Do loop

	pop			rcx					; Reset used registers
	mov			rax, rdi			; Return mem

end:
	ret
