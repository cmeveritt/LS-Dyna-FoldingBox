$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Jul-02-2020 (12:59:23)
*KEYWORD  
*BOUNDARY_PRESCRIBED_MOTION_SET_ID
$#      id                                                               heading
         1folding left plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         1        10         2         1       1.0         01.00000E28       0.0
$# offset1   offset2       mrb     node1     node2     
       1.0      -1.0         0         0         0
$#      id                                                               heading
         2Initial folding setp of right side
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         9        10         2         1      -1.0         0       1.0       0.0
$# offset1   offset2       mrb     node1     node2     
       1.0      21.0         0         0         0
$#      id                                                               heading
         3Initial folding setp of right side
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        10        10         2         1      -1.0         0       1.0       0.0
$# offset1   offset2       mrb     node1     node2     
       1.0      21.0         0         0         0
$#      id                                                               heading
         4Initial folding setp of right side
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        11        10         2         1      -1.0         0       1.0       0.0
$# offset1   offset2       mrb     node1     node2     
       1.0      21.0         0         0         0
$#      id                                                               heading
         5folding top plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         4         9         2         1       1.0         01.00000E28       0.0
$# offset1   offset2       mrb     node1     node2     
      81.0       1.0         0         0         0
$#      id                                                               heading
         6folding bottom plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         7         9         2         1      -1.0         01.00000E28       0.0
$# offset1   offset2       mrb     node1     node2     
      -1.0       1.0         0         0         0
$#      id                                                               heading
         7folding front plate
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        11        10         2         2       1.0         01.00000E28       1.0
$# offset1   offset2       mrb     node1     node2     
      22.0      21.0         0         0         0
$#      id                                                               heading
         8folding left flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        12        10         2         2       1.0         01.00000E28       1.0
$# offset1   offset2       mrb     node1     node2     
      22.0      -1.0         0         0         0
$#      id                                                               heading
         9folding bottom  flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        13         9         2         2      -1.0         01.00000E28       1.0
$# offset1   offset2       mrb     node1     node2     
      -1.0      21.0         0         0         0
$#      id                                                               heading
        10folding top  flap
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        14         9         2         2       1.0         01.00000E28       1.0
$# offset1   offset2       mrb     node1     node2     
      81.0      21.0         0         0         0
*END
