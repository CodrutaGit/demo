net use \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9 /u:saguaroprint.ro\cmorariu New42day /p:yes

set source="\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle10"
set target="\\172.27.105.152\Builds"

FOR /F "delims=" %%I IN ('DIR %source%\*.* /A:-D /O:-D /B') DO COPY %source%\"%%I" %target% & echo %%I & GOTO :END /i /z /y /s /e
:END

copy "\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9\setupitm.exe" "\\172.27.105.152\Builds"
copy "\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9\setupafp2pdf.exe" "\\172.27.105.152\Builds"
copy "\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9\setuppcl2afp.exe" "\\172.27.105.152\Builds"
copy "\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9\setupps2afp.exe" "\\172.27.105.152\Builds"
copy "\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9\setupsap2afp.exe" "\\172.27.105.152\Builds"
copy "\\172.27.105.151\Resources_AFP\install_TF_IPM\install_TF_IPM.cmd" "\\172.27.105.152\Builds"
TIMEOUT 10