//HERC01IF JOB (IFELSE),                            
//             'JCLPGM IFELSE',                     
//             CLASS=A,                             
//             MSGCLASS=H,                          
//             NOTIFY=HERC01,                       
//             MSGLEVEL=(1,1)                       
//* JCL EJECUTA PGM IFELSE                          
//PASO01   EXEC PGM=IFELSE                          
//STEPLIB  DD DSN=HERC01.PLATZI.LOAD,DISP=SHR       
//SYSOUT   DD SYSOUT=*                              
/*                                                  
//                                                  