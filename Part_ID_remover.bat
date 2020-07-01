
@ECHO OFF
REM https://stackoverflow.com/questions/418916/delete-certain-lines-in-a-txt-file-via-a-batch-file
REM type Foldingbox5-Geom.K | findstr /v *PART | findstr /v LSHELL| findstr /v LSHELL  >> Foldingbox5-Geom_2.K

REM https://stackoverflow.com/questions/34397055/delete-a-certain-line-and-lines-before-and-after-the-matched-line
@ECHO OFF
SETLOCAL
SET "$="
SET "tempfile=temp.txt"
ECHO.>"%tempfile%"
FOR /f "tokens=1*delims=:" %%a IN ('findstr /n /r ".*" Foldingbox5-Geom.K') DO (
 ECHO %%b|FIND "*PART" >NUL
 IF NOT ERRORLEVEL 1 CALL :saveline# %%a
)
IF NOT DEFINED $ COPY /b Foldingbox5-Geom.K Foldingbox5-No_Parts_Geom.K 2>NUL >nul&GOTO done
(
FOR /f "tokens=1*delims=:" %%a IN ('findstr /n /r ".*" Foldingbox5-Geom.K^|findstr /v /b /g:"%tempfile%"') DO (
 ECHO(%%b
)
)>Foldingbox5-No_Parts_Geom.K
:done
DEL "%tempfile%"

GOTO :EOF

:saveline#
:: calculate START line number to delete
SET /a $=%1 
:: number of lines to delete
SETLOCAL enabledelayedexpansion
FOR /l %%d IN (1,1,5) DO (
 >>"%tempfile%" ECHO(!$!:
 SET /a $+=1
)
GOTO :EOF

pause
