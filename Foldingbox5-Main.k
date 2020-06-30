$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Jun-26-2020 (13:08:40)
*KEYWORD   
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol     
       2.0         0      0.01       0.01.000000E8         0
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




*MAT_ELASTIC_TITLE
Simple Elastic
$#     mid        ro         e        pr        da        db  not used        
         19.0000E-10   10000.0       0.3       0.0       0.0       0.0
*SECTION_SHELL_TITLE
Paperboard
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
         1         2       1.0         2       1.0         0         0         1
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
         1         1         1         1       0.0       0.0       0.0         0
$=======================================================================================
$ Input the geometry file
$=======================================================================================
*INCLUDE
$#                                                                      filename
Foldingbox5-Geom.K
$#                                                                      filename
Foldingbox5-Ad_Geom.K
$#                                                                      filename
Boundary_v5.K
*END
