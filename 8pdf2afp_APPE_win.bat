echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderPDF=e:\demo_TestFiles\PDF\

echo =============    Transform files from dir and subdir of : %folderPDF% ======================================

set /p demo_itm_ipaddress=< %c:\Users\Administrator\Transforms\demo_itm_ipaddress_APPE_win%
echo %demo_itm_ipaddress%

echo ++++test1

for /R %folderPDF% %%i in (*.pdf) do (

echo +++++pass
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
echo ===============  Working Transform script is:.......... %cd% 

echo ================================================
echo ================================================

echo ===============  APPE Transform with default configuration =======================

echo %submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.afp" -s8013
%submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.afp" -s8013 

echo ++++test2

echo ===============  APPE Transform using USEDEFAULTFONTFORSUBSTITUTION parameter =======================

echo %submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -pragma USEDEFAULTFONTFORSUBSTITUTION -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.USEDEFAULTFONTFORSUBSTITUTION.afp" -s8013
%submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -pragma USEDEFAULTFONTFORSUBSTITUTION -pragma USEPDFPAGESIZE=true -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.USEDEFAULTFONTFORSUBSTITUTION.afp" -s8013 
  

echo ===============  APPE COLOR Transform with default configuration =======================

echo %submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.color.afp" -s8013
%submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.color.afp" -s8013 

echo ===============  APPE COLOR Transform using USEDEFAULTFONTFORSUBSTITUTION parameter =======================

echo %submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -pragma USEDEFAULTFONTFORSUBSTITUTION -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.USEDEFAULTFONTFORSUBSTITUTION.color.afp" -s8013
%submition_tool%\itm_driver_win.exe -S %demo_itm_ipaddress% -P 6986 -F"-itm_in_files %%i -aFS45 -pragma USEDEFAULTFONTFORSUBSTITUTION -pragma USEPDFPAGESIZE=true -itm_out_files e:\OutputTransformPDF2AFP_APPE\demo_output_AFP\%%~pi\%%~ni.APPE.USEDEFAULTFONTFORSUBSTITUTION.color.afp" -s8013 
  
echo ================================================
 ) >> C:\Users\Administrator\Transforms\TestPDF2AFP_APPE\Log\win\demo_pdf2afpAPPE_itm-driver.log 2>&1


echo EXIT
echo EXIT