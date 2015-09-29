	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	
	mov r3, r0			@count 計數迴圈次數
	mov r4, #0
	mov r5,	#1
	
	cmp r0,#1			@if r0>1
	bgt .LOOP			@goto loop
	pop {r3, r4, r5, pc}		@return r0

.LOOP:
	adds r0, r4, r5			@fibonacci f(n-1)+f(n-2)
	mov r4, r5
	mov r5, r0
	subs r3, r3, #1			@count-=1
	cmp r3, #1			@if count>1
	bgt .LOOP	
	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
