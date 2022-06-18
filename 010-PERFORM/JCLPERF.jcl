//HERC01PE JOB (COBOL),                                              
//             'COBOL PERFORM',                                      
//             CLASS=A,                                              
//             MSGCLASS=H,                                           
//             REGION=8M,TIME=1440,                                  
//             NOTIFY=HERC01,                                        
//             MSGLEVEL=(1,1)                                        
//****************************************************************** 
//*                                                                  
//* ESTE PASO VA A COMPILAR Y LINKEDITAR EL PROGRAMA                 
//* FUENTE                                                           
//*                                                                  
//****************************************************************** 
//COMPILE  EXEC COBOL,                                               
//         PROG='PERFORM',                                           
//         PDSF='HERC01.PLATZI.SRC',                                 
//         PDSL='HERC01.PLATZI.LOAD'                                 
//****************************************************************** 
//*                                                                  
//* ESTE PASO VA A EJECUTAR EL MODULO DE CARGA                       
//*                                                                  
//****************************************************************** 
//PROG0101 EXEC PGM=PERFORM                                          
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR                        
//SYSOUT   DD SYSOUT=*                                               
/*                                                                   
//                                                                   