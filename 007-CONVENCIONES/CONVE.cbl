       IDENTIFICATION DIVISION.                                  
       PROGRAM-ID.                     CONVE.                    
       ENVIRONMENT DIVISION.                                     
       DATA DIVISION.                                            
                                                                 
       WORKING-STORAGE SECTION.                                  
       77  WSS-SWITCHES                PIC X(01) VALUE '1'.      
         88 WSS-FIN                              VALUE '0'.      
                                                                 
       01  WSV-VARIABLES.                                        
           05 WSV-NUMERO-1             PIC 9(03) VALUE ZEROS.    
           05 WSV-MASCARA              PIC ZZZ   VALUE ZEROS.    
                                                                 
       01  WSC-CONSTANTES.                                       
           05 WSC-TEXTO-A              PIC X(06) VALUE 'PLATZI'. 
           05 WSC-TEXTO-2.                                       
             10 WSC-TEXT-2             PIC X(05) VALUE 'COBOL'.  
                                                                 
       PROCEDURE DIVISION.                                       
           DISPLAY 'WSC-CONSTANTES CONTIENE  : ' WSC-CONSTANTES  
           DISPLAY 'EL VALOR DE LA VARIABLE 1: ' WSV-NUMERO-1    
           DISPLAY 'EL VALOR DEL SWITCH      : ' WSS-SWITCHES    
           MOVE 5                      TO        WSV-NUMERO-1    
           MOVE WSV-NUMERO-1           TO        WSV-MASCARA     
           DISPLAY 'EL VALOR ENMASCARADO ES  : ' WSV-MASCARA     
           STOP RUN.                                             