main: addi $2 $0 5
      syscall
      add $8 $0 $2
      add $9 $0 $8
      
     add $15 $0 $8
     addi $10 $0 1 
      
 laco: mul $15 $15 $8
       addi $9 $9 -1
       beq $9 $10 saimul
       j laco  
       
 saimul: addi $8 $8 -1
         mul $15 $15 $8
         add $9 $0 $8
         beq $8 $10 imprime  
         j laco
         
 imprime: add $4 $0 $15
          addi $2 $0 1
          syscall                                