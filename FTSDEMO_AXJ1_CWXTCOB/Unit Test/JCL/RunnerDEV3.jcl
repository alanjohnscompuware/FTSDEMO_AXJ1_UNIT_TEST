${TOTALTEST_JOBCARD}
//*** RUNNER JCL FOR ISPW CONTROLLED CWXTCOB RUNNING OUT OF
//*   DEV3, QA3 LEVELS
//*   THIS USED WHEN RUNNING UNIT TESTS AD HOC IN DEV2 LEVEL
//*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//*
//*
//STEPLIB DD DISP=SHR,DSN=SYS2.CW.&CWGACX..SLCXLOAD
//*  where MLCXnnn is MLCX170 OR HIGHER
//        DD DISP=SHR,DSN=SALESSUP.AXJ1.DEV3.LOAD     
//*       DD DISP=SHR,DSN=<COBOL RUNTIME LOADLIB>
//*EMPFILE  DD  DISP=SHR,DSN=HUK0320.DEMO.JCL(CWXTDATA)
//*RPTFILE  DD  SYSOUT=*
//*
//* The following lines will initialize storage to zeroes to avoid 
//* uninitialized storage assertion miscompares.
//CEEOPTS  DD  *
STORAGE(00,00,00)
/*
//TRPARM DD *
*
*        Optionally set your custom exit program here:
* 
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(ON)
/* 
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//*DD1 DD DSN=HLQ.CUSTOM.TEST.LOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//TTOUT   DD  SYSOUT=*
//*SYSIN  DD DSN=dataset.with.required.data,DISP=SHR
//*









