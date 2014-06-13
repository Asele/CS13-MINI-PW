	global insort
	section .text
insort:
	mov	[leng], rsi
	dec	word [leng]
	push	rdi
whiledo:
	pop	rsi
	add	rsi, 4
	push	rsi
	inc	word [cntr]
	mov	ax, [leng]
	cmp	ax, [cntr]
	jl	_done
swapin:
	cmp	rsi, rdi
	je	whiledo
	mov	eax, [rsi]
	sub	rsi, 4
	cmp	eax, [rsi]
	jl	whiledo
	jmp	swap
_done:	pop rsi
	ret
swap:
	mov	eax, [rsi]
	add	rsi, 4
	mov	edx, [rsi]
	mov	[rsi], eax
	sub	rsi, 4
	mov	[rsi], edx
	jmp	swapin

	section .data
leng:	dw	0
cntr:	dw	0
