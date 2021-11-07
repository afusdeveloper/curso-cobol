//COBOL PROC SOUT='*'                                                   00000109
//* ************************************************************        00000209
//*                                                                     00000309
//* OBJET. DE PROCEDURE: COMPILAR EL PROGRAMA COBOL, DESPUES HACER      00000409
//*                      LINKEDIT DEL MODULO DE CARGA.                  00000509
//*                                                                     00000609
//*          PARAMETROS: PROG=NOMBRE DE PROGRAMA A COMPILAR             00000709
//*                      PDSF=LIBRERIA DONDE RESIDE EL CODIGO FUENTE    00000810
//*                      PDSL=LIBRERIA DONDE RESIDE EL MODULO DE        00000910
//*                           CARGA                                     00001010
//* ************************************************************        00001109
//*                                                                     00001209
//* PASO IKFCBL01      : COMPILA EL PROGRAMA COBOL                      00001310
//*                                                                     00001409
//* ************************************************************        00001509
//IKFCBL01 EXEC  PGM=IKFCBL00,                                          00001609
//           PARM='FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'              00001709
//SYSPRINT DD SYSOUT=&SOUT                                              00001809
//SYSPUNCH DD SYSOUT=*                                                  00001909
//SYSUT1   DD UNIT=SYSDA,SPACE=(460,(700,100))                          00002009
//SYSUT2   DD UNIT=SYSDA,SPACE=(460,(700,100))                          00002109
//SYSUT3   DD UNIT=SYSDA,SPACE=(460,(700,100))                          00002209
//SYSUT4   DD UNIT=SYSDA,SPACE=(460,(700,100))                          00002309
//SYSIN    DD DSNAME=&PDSF(&PROG),DISP=SHR                              00002409
//SYSLIN   DD DSNAME=&LOADSET,DISP=(MOD,PASS),UNIT=SYSDA,               00002509
//            SPACE=(80,(500,100))                                      00002609
//SYSLIB   DD DSNAME=SYS1.COBLIB,DISP=SHR                               00002709
//*                                                                     00002809
//* ************************************************************        00002909
//*                                                                     00003009
//* PASO LKED          : SI LA COMPILACION FUE EXITOSA, ESTE PASO       00003110
//*                      CREA EL MODULO DE CARGA                        00003210
//*                                                                     00003309
//* ************************************************************        00003409
//LKED     EXEC PGM=IEWL,PARM='LIST,XREF,LET',COND=(4,LT,IKFCBL01)      00003510
//SYSLIN   DD DSNAME=&LOADSET,DISP=(OLD,DELETE)                         00003609
//         DD DDNAME=SYSIN                                              00003709
//SYSPUNCH DD SYSOUT=*                                                  00003809
//SYSLMOD  DD DSNAME=&PDSL(&PROG),DISP=SHR                              00003909
//SYSLIB   DD DSNAME=SYS1.COBLIB,DISP=SHR                               00004009
//SYSUT1   DD UNIT=(SYSDA,SEP=(SYSLIN,SYSLMOD)),SPACE=(1024,(50,20))    00004109
//SYSPRINT DD SYSOUT=&SOUT                                              00004209
//*                                                                     00004309
//* ************************************************************        00004409
//* FIN DE PROCEDIMIENTO                                                00004510
//* ************************************************************        00004609