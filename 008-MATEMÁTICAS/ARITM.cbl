       IDENTIFICATION DIVISION.                                   
       PROGRAM-ID.                     ARITM.                     
       ENVIRONMENT DIVISION.                                      
       DATA DIVISION.                                             
       WORKING-STORAGE SECTION.                                   
       77  WSC-NUM-A                   PIC 9(01) VALUE 5.         
       77  WSC-NUM-B                   PIC 9(01) VALUE 9.         
      *                                                           
       77  WSV-RESULT-1                PIC 9(02) VALUE ZEROS.     
       77  WSV-RESULT-2                PIC 9(02) VALUE ZEROS.     
       77  WSV-RESULT-3                PIC 9(02) VALUE ZEROS.     
       77  WSV-RESULT-4                PIC 9(02) VALUE ZEROS.     
       77  WSV-RESULT-5                PIC 9(02) VALUE ZEROS.     
      *                                                           
       PROCEDURE DIVISION.                                        
       010-MAIN.                                                  
                                                                  
      *ADD                                                        
           ADD WSC-NUM-A TO WSC-NUM-B GIVING WSV-RESULT-1         
                                                                  
      *SUBSTRACT                                                  
           SUBTRACT WSC-NUM-B FROM WSC-NUM-A GIVING WSV-RESULT-2  
                                                                  
      *MULTIPLY                                                   
           MULTIPLY WSC-NUM-A BY WSC-NUM-B GIVING WSV-RESULT-3    
                                                                  
      *DIVIDE                                                     
           DIVIDE   WSC-NUM-A BY WSC-NUM-B GIVING WSV-RESULT-4    
                                                                  
      *COMPUTE                                                    
           COMPUTE  WSV-RESULT-5 = WSC-NUM-A * WSC-NUM-B          
      *                                                           
           DISPLAY 'RESULTADO 1: ' WSV-RESULT-1                   
           DISPLAY 'RESULTADO 2: ' WSV-RESULT-2                   
           DISPLAY 'RESULTADO 3: ' WSV-RESULT-3                   
           DISPLAY 'RESULTADO 4: ' WSV-RESULT-4                   
           DISPLAY 'RESULTADO 5: ' WSV-RESULT-5                   
           STOP RUN.                                              