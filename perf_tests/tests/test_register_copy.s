; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    test_register_copy.s                               :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/03 17:15:51 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/03 17:39:54 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define			RG1 rax
%define			RG2 rbx
%define			RG3 rcx

; TEST REGISTER COPY
; ------------------
; 12 register moves
; 3 value moves
; 3 push
; 3 pop

SECTION .text
	global _test_register_copy

_test_register_copy:
	push		rax
	push		rbx
	push		rcx

	mov			RG1, 1				; Set default values
	mov			RG2, 2
	mov			RG3, 4

	mov			RG2, RG1			; First move
	mov			RG3, RG2
	mov			RG1, RG3

	mov			RG2, RG1			; Second move
	mov			RG3, RG2
	mov			RG1, RG3

	mov			RG2, RG1			; Third move
	mov			RG3, RG2
	mov			RG1, RG3

	pop			rcx					; Reset used registers
	pop			rbx
	pop			rax
	ret