       IDENTIFICATION DIVISION.                                      
       PROGRAM-ID.                     IFELSE.  
       AUTHOR.                         AYMARA M FUSARO.                     
       ENVIRONMENT DIVISION.                                         
       DATA DIVISION.                                                
                                                                     
       WORKING-STORAGE SECTION.                                      
       01  WSC-CONSTANTES.                                           
          05 WSC-A                     PIC 9 VALUE 7.                
          05 WSC-B                     PIC 9 VALUE 9.                
                                                                     
       PROCEDURE DIVISION.                                           
           PERFORM 010-IF                                            
           PERFORM 010-END.                                          
                                                                     
       010-IF.                                                       
           IF WSC-A < WSC-B                                          
              DISPLAY 'EL VALOR DE ' WSC-A ' ES MENOR QUE ' WSC-B    
           ELSE                                                      
              DISPLAY 'EL VALOR DE ' WSC-A ' ES MAYOR QUE ' WSC-B.   
              STOP RUN.                                              
       010-END. EXIT.