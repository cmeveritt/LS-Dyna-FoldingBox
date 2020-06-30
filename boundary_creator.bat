@echo off

REM depending on de input numbers the number of spaces will be wrong. 
set panel_w= 20
set panel_h= 80
set crease_w= 2
set /a crease_2=%crease_w% / 2
echo Half crease height is %crease_2% 


set file= Boundary_v5.K
echo *BOUNDARY_PRESCRIBED_MOTION_SET_ID > %file%

REM Rem is used to add comments
REM dof 10 stands for rotation around y
REM dof  9 stands for rotation around x. 

REM creating the rotation BCs
REM for /l %%x in (1, 1, 11) do (

set counter= 1
REM Folding left side
echo $#      id                                                               heading >> %file%
echo         %counter% folding left plate >> %file%
set /a counter= %counter% + 1
echo $#    nsid       dof       vad      lcid        sf       vid     death     birth >> %file%
echo          1        10         2         1       1.0         01.00000E28       0.0 >> %file%
echo $# offset1   offset2       mrb     node1     node2     >> %file%
echo          %crease_2%        -%crease_2%         0         0         0 >> %file%


REM First folding right sides 
setlocal ENABLEDELAYEDEXPANSION
set /a offset =%panel_w%+%crease_2%
echo The foling offset is %offset% 
for /l %%x in (9, 1, 11) do (
echo $#      id                                                               heading >> %file%
echo          !counter! Initial folding setp of right side >> %file%
set /a counter= !counter! + 1
echo $#    nsid       dof       vad      lcid        sf       vid     death     birth >> %file%
REM adjusting for number of spaces
if %%x == 9 (
echo          %%x        10         2         1      -1.0         0         1       0.0 >> %file%
)
if %%x gtr 9 (
 echo         %%x        10         2         1      -1.0         0         1       0.0 >> %file%   
)
echo $# offset1   offset2       mrb     node1     node2     >> %file%
echo          %crease_2%        %offset%         0         0         0 >> %file%
)
endlocal

REM Folding top side
echo $#      id                                                               heading >> %file%
echo         %counter% folding top plate >> %file%
set /a counter= %counter% + 1
echo $#    nsid       dof       vad      lcid        sf       vid     death     birth >> %file%
echo          4         9         2         1       1.0         01.00000E28       0.0 >> %file%
echo $# offset1   offset2       mrb     node1     node2     >> %file%
set /a offset= %panel_h%+%crease_2% 
echo         %offset%         %crease_2%         0         0         0 >> %file%

REM Folding bottom side
echo $#      id                                                               heading >> %file%
echo         %counter% folding bottom plate >> %file%
set /a counter= %counter% + 1
echo $#    nsid       dof       vad      lcid        sf       vid     death     birth >> %file%
echo          7         9         2         1       1.0         01.00000E28       0.0 >> %file%
echo $# offset1   offset2       mrb     node1     node2     >> %file%
echo         -%crease_2%         %crease_2%         0         0         0 >> %file%

REM Folding front side
echo $#      id                                                               heading >> %file%
echo         %counter% folding front plate >> %file%
set /a counter= %counter% + 1
echo $#    nsid       dof       vad      lcid        sf       vid     death     birth >> %file%
echo         11        10         2         2       1.0         01.00000E28         1 >> %file%
echo $# offset1   offset2       mrb     node1     node2     >> %file%
set /a offset1 =%panel_w%+ %crease_w%
set /a offset2 = %panel_w%+%crease_2%
echo %offset1% %offset2%
echo         %offset1%        %offset2%         0         0         0 >> %file%

pause