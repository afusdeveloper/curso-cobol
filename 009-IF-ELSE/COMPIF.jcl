//HERC01CO JOB (COBOL),                      
//             'COBOL COMPILACION',          
//             CLASS=A,                      
//             MSGCLASS=H,                   
//             REGION=8M,TIME=1440,          
//             NOTIFY=HERC01,                
//             MSGLEVEL=(1,1)                
//* JCL QUE COMPILA EL PGM IFELSE            
//COMPILE  EXEC COBOL,                       
//             PROG='IFELSE',                
//             PDSF='HERC01.PLATZI.SRC',     
//             PDSL='HERC01.PLATZI.LOAD'     
/*                                           