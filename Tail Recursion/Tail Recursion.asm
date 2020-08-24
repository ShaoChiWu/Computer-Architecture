#HW2.2

.data

input: .asciiz "Input "
N: .asciiz "N: "

.text

#Print "Input N: "
li $v0, 4
la $a0, input
syscall

li $v0, 4
la $a0, N
syscall

#Get input from keyboard and store a into $s0
li $v0, 5
syscall
move $a0, $v0   #$s0 as N

addi $a1,$zero,0
jal tail

move $a0,$v0
li $v0,1
syscall

li $v0,10
syscall

tail :

addi $sp, $sp, -4	       #adjust stack for 2 item
sw   $ra, 0($sp)           #save in stack

ble  $a0, $zero, exit      #if x <= 0, goto exit
add  $a1, $a1, $a0	       #running_total = running_total +n
addi $a0, $a0, -1          #n = n-1
jal 	 tail	           #goto tail


exit: 
move $v0, $a1              #return running_total
lw   $ra, 0($sp)           #read registers from stack
addi $sp, $sp, 4           #bring back stack pointer
jr   $ra	               #return to caller
