//HERC01HX JOB (COMP),                                    
//             'JOB EJECUTA HOLA',                        
//             CLASS=A,                                   
//             MSGCLASS=H,                                
//             MSGLEVEL=(1,1),                            
//             NOTIFY=HERC01,                             
//             TIME=1440,                                 
//             REGION=8M                                  
//*                                                       
//* JOB QUE EJECUTA PROGRAMA HOLA MUNDO EN COBOL          
//*                                                       
//PASO01   EXEC PGM=HOLA                                  
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR             
//SYSOUT   DD SYSOUT=*                                    
/*                                                        