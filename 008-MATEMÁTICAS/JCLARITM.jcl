//HERC01CO JOB (COBOL),                             
//             'COBOL COMPILACION',                 
//             CLASS=A,                             
//             MSGCLASS=H,                          
//             REGION=8M,TIME=1440,                 
//             NOTIFY=HERC01,                       
//             MSGLEVEL=(1,1)                       
//*                                                 
//* JCL QUE COMPILA EL PGM ARITM                    
//*                                                 
//COMPILE  EXEC COBOL,                              
//         PROG='ARITM',                            
//         PDSF='HERC01.PLATZI.SRC',                
//         PDSL='HERC01.PLATZI.LOAD'                
//*                                                 
//* PASO DE EJECUCION DE PGM ARITM                  
//*                                                 
//PROG0101 EXEC PGM=ARITM                           
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR       
//SYSOUT   DD SYSOUT=*                              
/*                                                  