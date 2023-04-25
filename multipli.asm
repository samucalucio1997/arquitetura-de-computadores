main: addi $v0 $zero 5
      syscall
      add $t0 $zero $v0
      addi $v0 $zero 5
      syscall
      add $a2 $0 $v0
      mult $a2 $t0 
      mfhi $a2
      mflo $a3
      sll $a2 $a2 5
      add $a0 $a2 $a3
      addi $v0 $zero 1
      syscall