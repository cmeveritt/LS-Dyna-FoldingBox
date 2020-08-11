*KEYWORD
*PARAMETER
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
rpanelw   20.0      rpanelh   80.0
rcreasew  2.0                                                 
*PARAMETER_EXPRESSION
rgluew    panelw/3.0
rcreasew2 creasew/2.0
rcrepanw  creasew+panelw
rcre2panw creasew2+panelw
rcre2panh creasew2+panelh      
*BOUNDARY_PRESCRIBED_MOTION_SET_ID 
$#      id                                                               heading 
         1 folding left plate 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
         1        10         2         1       1.0         01.00000E28       0.0 
$# offset1   offset2       mrb     node1     node2     
 &creasew2-&creasew2         0         0         0 
$#      id                                                               heading 
         2 Initial folding setp of right side 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
         9        10         2         1      -1.0         0         1       0.0 
$# offset1   offset2       mrb     node1     node2     
 &creasew2 &cre2panw         0         0         0 
$#      id                                                               heading 
        5 folding top plate 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
         4         9         2         1      -1.0         01.00000E28       0.0 
$# offset1   offset2       mrb     node1     node2     
-&creasew2 &creasew2         0         0         0 
$#      id                                                               heading 
        6 folding bottom plate 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
         7         9         2         1       1.0         01.00000E28       0.0 
$# offset1   offset2       mrb     node1     node2     
&cre2panh &creasew2         0         0         0 
$#      id                                                               heading 
        7 folding front plate 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
        11        10         2         2       1.0         01.00000E28         1 
$# offset1   offset2       mrb     node1     node2     
  &crepanw &cre2panw         0         0         0 
$#      id                                                               heading 
        8 folding left flap 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
        13        10         2         2       1.0         01.00000E28         1 
$# offset1   offset2       mrb     node1     node2     
  &crepanw-&creasew2         0         0         0 
$#      id                                                               heading 
        9 folding bottom  flap 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
        15         9         2         2      -1.0         01.00000E28         1 
$# offset1   offset2       mrb     node1     node2     
-&creasew2  &crepanw         0         0         0 
$#      id                                                               heading 
        10 folding top  flap 
$#    nsid       dof       vad      lcid        sf       vid     death     birth 
        17         9         2         2       1.0         01.00000E28         1 
$# offset1   offset2       mrb     node1     node2     
 &cre2panh  &crepanw         0         0         0 
