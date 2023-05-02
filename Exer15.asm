main: addi $2 $0 5
      syscall
      add $8 $0 $2
      
      addi $9 $0 1
      add $10 $0 $9
      add $11 $0 $9
      
  imprime: add $4 $0 $9
           addi $2 $0 1
           syscall
           addi $4 $0 ' '
           addi $2 $0 11
           syscall
           beq $9 $8 fim
           beq $10 $11 increm
           addi $9 $9 1
           addi $10 $10 1
           j imprime
            
 
 increm: addi $11 $11 1
         addi $10 $0 1
         addi $9 $9 1
         #beq $9 $8 fim
         addi $4 $0 '\n'
         addi $2 $0 11
         syscall       
         j imprime

fim: addi $2 $0 10
     syscall
