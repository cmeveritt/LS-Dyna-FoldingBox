$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Aug-12-2020 (13:47:48)
*KEYWORD
*PARAMETER
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
rpanelw   20.0      rpanelh   80.0                                              
rcreasew  2.0                                                                   
rfinfold  2.1                                                                   
rfinfold2 2.2                                                                   
rfinfold3 3.1                                                                   
*PARAMETER_EXPRESSION
rgluew    panelw/3.0
rcreasew2 creasew/2.0
rcrepanw  creasew+panelw
rcrepanwe creasew+panelw+0.5
rcre2panw creasew2+panelw
rcre2panh creasew2+panelh
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIEBREAK_ID
$#     cid                                                                 title
         4tibebreak contact
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        13        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.0       0.0       0.0       0.0       0.0         0       0.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#  option      nfls      sfls     param    eraten    erates     ct2cn        cn
         1       0.0       0.0       0.0       0.0       0.0       0.0       0.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIEBREAK_ID
$#     cid                                                                 title
         4tibebreak contact
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        15        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.0       0.0       0.0       0.0       0.0         0       0.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#  option      nfls      sfls     param    eraten    erates     ct2cn        cn
         1       0.0       0.0       0.0       0.0       0.0       0.0       0.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_TIEBREAK_ID
$#     cid                                                                 title
         4tibebreak contact
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        17        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.0       0.0       0.0       0.0       0.0         0       0.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$#  option      nfls      sfls     param    eraten    erates     ct2cn        cn
         1       0.0       0.0       0.0       0.0       0.0       0.0       0.0
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
$#      id                                                               heading
        11Box kompression
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        18         2         2         3      -1.0         0      10.0       0.0
*BOUNDARY_SPC_SET_ID
$#      id                                                               heading
         2top plate
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
        18         0         1         0         1         1         1         1
$#      id                                                               heading
         3Bottom plate
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
        19         0         1         1         1         1         1         1
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         4contact for box compression bottom
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        19         4         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression top
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        18         7         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression top - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        18         1         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression top - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        18         3         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression top - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        18         9         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression top side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        18        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression bottom - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        19         1         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression bottom - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        19         3         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression bottom - side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        19         9         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE_ID
$#     cid                                                                 title
         5contact for box compression bottom side
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
        19        11         3         3         0         0         0         0
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       1.0       1.0       0.0       0.0       0.0         0       2.01.00000E20
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
*END
