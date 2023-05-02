main: addi $2 $0 5
      syscall
      add $8 $0 $2
      
      addi $9 $0 0
      addi $10 $0 1
      addi $11 $0 0
      beq $11 $8 sai9
      
  laco:add $9 $10 $9
       addi $11 $11 1
       beq $11 $8 sai9
       add $10 $9 $10
       addi $11 $11 1
       beq $11 $8 sai10
       j laco
       
 sai9: add $4 $0 $9
       addi $2 $0 1
       syscall
       addi $2 $0 10
       syscall
                           
 sai10:add $4 $0 $10
       addi $2 $0 1
       syscall
       addi $2 $0 10
       syscall     