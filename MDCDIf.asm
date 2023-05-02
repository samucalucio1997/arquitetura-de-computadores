main: addi $2 $0 5 
      syscall
      add $8 $0 $2
      addi $2 $0 5
      syscall
      add $9 $0 $2
      
      slt $15 $9 $8
      beq $15 $0 atri1
      j atri2
  atri1: add $10 $0 $8
         j n
  atri2: add $10 $0 $9        
 
     n: add $25 $0 1 
        j laco    

 increm: addi $25 $25 1
         beq $25 $10 saifim
         j laco   
    
 laco: div $8 $25
       mfhi $11
       div $9 $25
       mfhi $12
       beq $12 $11 ver
       j increm
       
  ver: beq $12 $0 atr
       j increm

  atr: add $4 $0 $25 
       j increm
       
  saifim: addi $2 $0 1
          syscall           
                                                                                                                                                                                                                                                                                                                                               