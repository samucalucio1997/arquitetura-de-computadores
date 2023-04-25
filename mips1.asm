 main: addi $v0, $zero, 5
     syscall 
     addi $a2, $zero, 100
     addi $a3, $zero, 10
     div $t0, $v0, $a2
     mfhi $t1
     div $a0, $t1, $a3
     mfhi $t3
     add $t2,$t0,$a0
     add $a0, $t2, $t3
     addi $v0, $zero, 1
     syscall