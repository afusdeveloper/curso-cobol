       IDENTIFICATION DIVISION.                                      
       PROGRAM-ID.                     'PERFORM'.   
       AUTHOR.                         AYMARA M FUSARO.                 
       ENVIRONMENT DIVISION.                                         
       DATA DIVISION.                                                
       WORKING-STORAGE SECTION.                                      
       01  WSV-VARIABLES.                                            
           05 WSV-CONTADOR             PIC 9(03) VALUE ZEROS.        
           05 WSV-INC                  PIC 9(03) VALUE ZEROS.        
                                                                     
       PROCEDURE DIVISION.                                           
       010-MAIN.                                                     
      *USO DE PERFORM TIMES                                          
           PERFORM 040-VEC 3 TIMES                                   
                                                                     
      *USO DE PERFORM UNTIL                                          
           PERFORM 041-VEC UNTIL WSV-INC = 6                         
           PERFORM 050-RETURN.                                       
       010-END.                                                      
                                                                     
       040-VEC.                                                      
           ADD 1                       TO WSV-CONTADOR               
           DISPLAY 'EL VALOR DEL CONTADOR ES..     : ' WSV-CONTADOR. 
                                                                     
       041-VEC.                                                      
           ADD 1                       TO WSV-INC                    
           DISPLAY 'EL VALOR DEL INCREMENTADOR ES..: ' WSV-INC.      
                                                                     
       050-RETURN.                                                   
           STOP RUN.                                                 
       050-END.                                                      