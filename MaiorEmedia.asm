main: addi $2 $0 5
      syscall
      
      add $9 $0 $2#menor 
      add $10 $0 $2 #maior
      add $11 $0 $2 #media
      addi $13 $0 1 # contador
  laco: addi $2 $0 5
        syscall
        beq $2 $0 sai1
        add $11 $11 $2
        addi $13 $13 1
        slt $15 $9 $2
        bne $15 $0 Tmaior
        j menor
        
 menor:add $9 $0 $2 
       j laco         
        
 Tmaior: slt $16 $10 $2
         bne $16 $0 atri
         j laco
         
                        
 atri: add $10 $0 $2 
       j laco
       
   sai1: div $11 $13 
         mflo $20
         mfhi $25
         addi $17 $0 10
         mul $17 $17 $25
         add $4 $0 $20
         addi $2 $0 1
         syscall
         add $4 $0 ','
         addi $2 $0 11
         syscall
         add $4 $0 $17
         addi $2 $0 1
         syscall
         addi $4 $0 '\n'
         addi $2 $0 11
         syscall 
         add $4 $0 $9
         addi $2 $0 1
         syscall
         addi $4 $0 '\n'
         addi $2 $0 11
         syscall 
         add $4 $0 $10
         addi $2 $0 1
         syscall                                                                                                           
      
      