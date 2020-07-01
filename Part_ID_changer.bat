@echo off
REM This code ads extra linbes for definin *Part, to include secid and mid
REM Since extra lines are added, LS-PrePost will present a warning meassage that these parts are defined twice
REM Initial ideas from https://stackoverflow.com/questions/23574631/edit-text-file-using-batch-file
    setlocal enableextensions disabledelayedexpansion

    set "Original_filename=.\Foldingbox5-Geom.K"
    set "Adjusted_filename=.\Foldingbox5-New_Parts_Geom.K"
    set "New_line=*PART"
    set "New_line2=$#"
    set "New_line3=LSHELL1"
    set "New_line4=$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid"
    set "New_line5=         1         1         1         0         0         0         0         0"
    set "Old_line=*Part"
    set counter=1

    REM Reset the file if it exists
    if exist %Original_filename%   >"%Adjusted_filename%" echo $#


    setlocal ENABLEDELAYEDEXPANSION
    for /f "tokens=*" %%l in ('type "%Original_filename%"'
    ) do for /f "tokens=1 delims== " %%a in ("%%~l"
    ) do if /i "%%~a"=="%Old_line%" (
        >>"%Adjusted_filename%" echo %New_line%
        >>"%Adjusted_filename%" echo %New_line2%
        >>"%Adjusted_filename%" echo %New_line3%
        >>"%Adjusted_filename%" echo %New_line4%
        set "New_line5=         !counter!         1         1         0         0         0 "
        if !counter! gtr 9 (
        set "New_line5=        !counter!         1         1         0         0         0         0 "
        )
        >>"%Adjusted_filename%" echo !New_line5!
        set /a counter=!counter!+1
        echo !New_line5!
    ) 

    endlocal
    type "%Original_filename%"

    echo Now removing old part defenietions. Please wait a few minutes. 
    REM Remove the old Part defenietions. This thakes 2-3minutes
    call Part_ID_remover.bat

    endlocal
    pause