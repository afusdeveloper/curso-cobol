//HERC01DT JOB (COBOL),                                            
//             'COMPILADOR COBOL',                                 
//             CLASS=A,NOTIFY=HERC01,                              
//*            TYPRUN=SCAN,                                        
//             MSGCLASS=H,MSGLEVEL=(1,1),                          
//             REGION=8M,TIME=1440                                 
//*                                                                
//* ESTE JOB VA A COMPILAR AL PROGRAMA CONVE ESCRITO EN COBOL      
//*                                                                
//COMPILE  EXEC COBOL,                                             
//         PROG='CONVE',                                           
//         PDSF='HERC01.PLATZI.SRC',                               
//         PDSL='HERC01.PLATZI.LOAD'                               
//*                                                                
//* ESTE PASO VA A EJECUTAR EL PROGRAMA CONVE                      
//*                                                                
//PASO01   EXEC PGM=CONVE                                          
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR                      
//SYSOUT   DD SYSOUT=*                                             
//* FIN DE JCL DE COMPILACION                                      
/*                                                                 