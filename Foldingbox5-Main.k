$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Jul-02-2020 (12:59:23)
*KEYWORD
*TITLE
$#                                                                         title
LS-DYNA keyword deck by LS-PrePost
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol     
       2.0         0      0.01       0.01.000000E8         0
*DATABASE_ELOUT
$#      dt    binary      lcur     ioopt   option1   option2   option3   option4
       0.1         3         0         1         0         0         0         0
*DATABASE_GLSTAT
$#      dt    binary      lcur     ioopt     
       0.1         3         0         1
*DATABASE_NODOUT
$#      dt    binary      lcur     ioopt   option1   option2       
       0.1         3         0         1       0.0         0
*DATABASE_SPCFORC
$#      dt    binary      lcur     ioopt     
       0.1         3         0         1
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid      
       0.1         0         0         0         0
$#   ioopt      rate    cutoff    window      type      pset    
         0       0.0       0.0       0.0         0         0
*MAT_ELASTIC_TITLE
Simple Elastic
$#     mid        ro         e        pr        da        db  not used        
         19.0000E-10   10000.0       0.3       0.0       0.0       0.0
*SECTION_SHELL_TITLE
Paperboard
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
         1         2       1.0         2       1.0         0         0         1
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       1.0       1.0       1.0       1.0       0.0       0.0       0.0         0
*DEFINE_CURVE_TITLE
time o to 1
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
         1         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1  
                 0.0                 0.0
                 1.0            1.570796
                10.0            1.570796
*DEFINE_CURVE_TITLE
time 1 to 2
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
         2         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1  
                 0.0                 0.0
                 1.0                 0.0
                 2.0            1.570796
                10.0            1.570796
$=======================================================================================
$ Input the geometry file
$=======================================================================================
*INCLUDE
$#                                                                      filename
C:\Users\carlmagnusev\Documents\GitHub\LS-Dyna-FoldingBox\Foldingbox5-No_Parts +
_Geom.K
$#                                                                      filename
C:\Users\carlmagnusev\Documents\GitHub\LS-Dyna-FoldingBox\Foldingbox5-New_Part +
s_Geom.K
$#                                                                      filename
C:\Users\carlmagnusev\Documents\GitHub\LS-Dyna-FoldingBox\Boundary_v5.K
*END
