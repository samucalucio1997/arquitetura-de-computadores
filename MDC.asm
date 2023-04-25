main: addi $2 $0 5 
      syscall
      add $8 $0 $2
      addi $2 $0 5
      syscall
      
      slt $10 $8 $2
      bne $10 $0 atri
      j atri2
  
  atri2: add $11 $0 $8
         j comea                    
  atri: add $11 $0 $2          
   
   comea: addi $12 $0 1
          j ver
          
  incre: addi $12 $12 1
         beq $12 $11 fim
         j ver
                                   
  ver: div $8 $12
       mfhi $13
       beq $13 $0 atrix
       j ver2
       
 atrix: add $14 $0 $12      
        j ver2
        
                      
  ver2: div $2 $12
        mfhi $16
        beq $16 $0 atriy
        j finaliza
        
  atriy: add $15 $0 $12
         j finaliza
         
 finaliza: beq $14 $15 vre1
           j incre 
           
  vre1: bne $15 $0 imprime
        j incre
        
  imprime: add $4 $0 $14 
           j incre
   
  fim: addi $2 $0 1
       syscall
       addi $2 $0 10 
       syscall                                                                                                                                                                                                                                                                                                                                                                                                                                     