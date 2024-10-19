
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
	add s0, zero, zero # mhdenizoume s0 gia na apothhkeusoume apotelesma
	beq a1, zero, done # an o pinakas einai adeios
loop:
	lw   t1, 0(a0) 	# fortwse timh pinaka sto t1
	bne  t1, a2, continue # an den einai idia t1,a2 phgaine sthn continue
	add s0, a0, zero # antigrafh dieu8unshs ston s0		

continue:
	slli t2, a1 , 2 # deixnei sto epomeno stoixeio t2 = a1*(2^2)
	addi a1, a1, -1 # meiwsh stoixeiwn kata 1 
	beq  a1, zero, loop # an den teleiwsan ta stoixeia, ekteloume to loop

#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------


done:
    addi a7, zero, 10 # fortwse thn timh 10 sto a7
    ecall #termatizei to programma
