
echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set all_folders=e:\OutputTransformPDF2AFP_APPE\
echo =============    Transform files from dir and subdir of : %all_folders% ======================================
set /p itm_ipaddress=< %c:\Users\Administrator\Transforms\itm_ipaddress_win%
echo %itm_ipaddress%
for /R %all_folders% %%i in (*.afp ) do (
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi

echo ===============  Working Transform script is:.......... %cd% =====================

echo ===============   Transform all AFP resulted from all Transforms to PDF =======================

echo %submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\%%~pi\%%~ni.pdf" -s8040
%submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files  e:\%%~pi\%%~ni.pdf" -s8040 
 
 
 ) >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\win\all_afp2pdf_itm-driver.log 2>&1
 
echo ================================================

echo Copy.... e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\demo_TestFiles\PDF\*.pdf e:\OutputTransformPDF2AFP_APPE\demo_output_PDF\demo_TestFiles\PDF\  
xcopy /y /s /d  e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\demo_TestFiles\PDF\*.pdf e:\OutputTransformPDF2AFP_APPE\demo_output_PDF\demo_TestFiles\PDF\ >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\win\demo_all_afp2pdf_itm-driveraaa.log 2>&1

echo EXIT
echo EXIT


