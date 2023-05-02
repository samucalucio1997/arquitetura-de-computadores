main: addi $2 $0 5
      syscall
      add $8 $0 $2
      
      addi $9 $8 -1
      addi $10 $0 1
      addi $15 $0 1
      mul $15 $8 $9
     
 laco: addi $9 $9 -1
       beq $9 $10 sai
       mul $15 $15 $9
       j laco
       
  sai: add $4 $0 $15
       addi $2 $0 1
       syscall                                                 