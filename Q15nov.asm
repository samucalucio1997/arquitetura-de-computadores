main: addi $2 $0 5
      syscall      
      add $8 $0 $2
      beq $8 $0 sai
      
      addi $9 $0 1
      addi $10 $0 0
      addi $11 $0 1
      
 laco: add $4 $0 $9
       addi $2 $0 1
       syscall
       addi $4 $0 ' '
       addi $2 $0 11
       syscall
       addi $9 $9 1
       addi $10 $10 1
       beq $11 $10 increm
       j laco
       
 increm: addi $4 $0 '\n'
         addi $2 $0 11
         syscall
         addi $11 $11 1
         addi $10 $0 0
         beq $11 $8 sai
         j laco      
          
  sai:addi $2 $0 10
      syscall    
      