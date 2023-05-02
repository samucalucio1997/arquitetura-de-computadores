main:addi $2 $0 5
     syscall
     add $8 $0 $2
     addi $9 $0 0
     addi $10 $0 0
     beq $8 $10 sai9
     addi $9 $0 1
     add $20 $0 $9
     addi $10 $10 1
     beq $8 $10 sai20
     add $9 $20 $9
     addi $10 $10 1
     beq $8 $10 sai9
     j continua
     
     
continua: add $20 $9 $20
          addi $10 $10 1
          beq $10 $8 sai20
          add $9 $20 $9
          addi $10 $10 1
          beq $10 $8 sai9
          j continua      
     
 sai9:add $4 $0 $9 
      addi $2 $0 1
      syscall
      addi $2 $0 10
      syscall
      
 sai20: add $4 $0 $20
        addi $2 $0 1
        syscall
        addi $2 $0 10
        syscall                       
               
                    
                         
                              
                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             