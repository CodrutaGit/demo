@echo off
REM script must be in Test tools installation directory
time /T >> regr.log


set TTDIR=c:\TESTTOOLS\
set MASTERDIR=e:\demo_MF\PDF\
set CMPDIR=e:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\

echo running tiffcompare >> regr.log
set CURDIR=%CD%
pushd %TTDIR%

for /R %MASTERDIR% %%i in (*.tif) do (
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di% 
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
Echo File for compare is ************: file for compare = %%~nxi 
ECHO %TESTOOLS%

 	if EXIST %CMPDIR%\%%~pi (
ECHO ====================================================


		CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\log_win\demo\demo_output_regression_diff.log
echo CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\log_win\demo\demo_files.log	
	) else (
		echo no output was generated for %%i %CMPDIR%\%%~pi>> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\log_win\demo\demo_output_notfound_diff.log
	)	
)
popd

time /T >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\log_win\demo\demo_regr.log

