//* IEBGENER UTILERIA                         
//*                                           
//PASO02   EXEC PGM=IEBGENER,COND=(0,LT)      
//SYSUT1    DD  DSN=HERC01.*,DISP=SHR         
//SYSUT2    DD  DISP=(,MOD,DELETE),           
//              DSN=HERC01.*,                 
//              DCB=(*.SYSUT1),               
//              SPACE=(TRK,(200)),            
//              VOL=SER=PUB010,               
//              UNIT=3350                     
//SYSPRINT  DD  SYSOUT=*                      
//SYSIN     DD  DUMMY                         
/*                                            