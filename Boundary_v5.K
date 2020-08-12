$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Aug-12-2020 (08:24:17)
*KEYWORD
*PARAMETER
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
rpanelw   20.0      rpanelh   80.0                                              
rcreasew  2.0                                                                   
rfinfold  2.1
rfinfold2 2.2
rfinfold3 2.3                                                                   
*PARAMETER_EXPRESSION
rgluew    panelw/3.0
rcreasew2 creasew/2.0
rcrepanw  creasew+panelw
rcrepanwe creasew+panelw+0.5
rcre2panw creasew2+panelw
rcre2panh creasew2+panelh
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIED_WELD_ID
$#     cid                                                                 title
         1testing tied contack
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        13        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0      2.011.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#    temp     close    hclose     ntprm     nmhis     
       0.0       0.0       0.0         0         0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIED_WELD_ID
$#     cid                                                                 title
         2testing tied contack
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        15        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0      2.011.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#    temp     close    hclose     ntprm     nmhis     
       0.0       0.0       0.0         0         0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIED_WELD_ID
$#     cid                                                                 title
         3testing tied contack
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        17        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0      2.011.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#    temp     close    hclose     ntprm     nmhis     
       0.0       0.0       0.0         0         0
*BOUNDARY_PRESCRIBED_MOTION_SET_ID
$#      id                                                               heading
         1folding left plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         1        10         2         1       1.0         0&finfold         0.0
$# offset1   offset2       mrb     node1     node2     
&creasew2 -&creasew2         0         0         0
$#      id                                                               heading
         2Initial folding setp of right side
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         9        10         2         1      -1.0         0&finfold         0.0
$# offset1   offset2       mrb     node1     node2     
&creasew2 &cre2panw          0         0         0
$#      id                                                               heading
         5folding top plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         4         9         2         1      -1.0         0&finfold         0.0
$# offset1   offset2       mrb     node1     node2     
-&creasew2&creasew2          0         0         0
$#      id                                                               heading
         6folding bottom plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         7         9         2         1       1.0         0&finfold         0.0
$# offset1   offset2       mrb     node1     node2     
&cre2panh &creasew2          0         0         0
$#      id                                                               heading
         7folding front plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        11        10         2         1      -1.0         0&finfold3        1.0
$# offset1   offset2       mrb     node1     node2     
&crepanwe &cre2panw          0         0         0
$#      id                                                               heading
         8folding left flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        13        10         2         1       1.0         0&finfold2        1.0
$# offset1   offset2       mrb     node1     node2     
&crepanw  -&creasew2         0         0         0
$#      id                                                               heading
         9folding bottom  flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        15         9         2         1      -1.0         0&finfold2        1.0
$# offset1   offset2       mrb     node1     node2     
-&creasew2&crepanw           0         0         0
$#      id                                                               heading
        10folding top  flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        17         9         2         1       1.0         0&finfold2        1.0
$# offset1   offset2       mrb     node1     node2     
&cre2panh &crepanw           0         0         0
*BOUNDARY_SPC_SET
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
         3         0         1         1         1         1         1         1
*END
