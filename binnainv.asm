main: addi $2 $0 5
      syscall
      add $8 $0 $2
      
      addi $9 $0 2
      addi $11 $0 1
      
laco: div $8 $9
      mfhi $10
      mflo $8
      add $4 $0 $10
      addi $2 $0 1
      syscall
      beq $8 $11 imprime 
      j laco
  
 imprime: add $4 $0 $11
          addi $2 $0 1
          syscall        
      
      