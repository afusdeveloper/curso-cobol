//HERC01DT JOB (COMP),                               
//             'JOB COMPILA HOLA',                   
//             CLASS=A,                              
//             MSGCLASS=H,                           
//             REGION=8M,TIME=1440,                  
//             NOTIFY=HERC01,                        
//             MSGLEVEL=(1,1)                        
//*                                                  
//* JOB COMPILACION PROGRAMA HOLA MUNDO EN COBOL     
//*                                                  
//COMPILE  EXEC COBOL,                               
//         PROG='HOLA',                              
//         PDSF='HERC01.PLATZI.SRC',                 
//         PDSL='HERC01.PLATZI.LOAD'                 
//*                                                  
//* JOB EJECUCION PROGRAMA HOLA MUNDO EN COBOL       
//*                                                  
//PASO01   EXEC PGM=HOLA                             
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR        
//SYSOUT   DD SYSOUT=*                               
/*                                                   