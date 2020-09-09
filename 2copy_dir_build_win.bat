net use \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9 /u:saguaroprint.ro\cmorariu New42day /p:yes

set source="\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9"
set target="\\172.27.105.152\Users\Administrator\Transforms\Builds"

FOR /F "delims=" %%I IN ('DIR %source%\*.* /A:-D /O:-D /B') DO COPY %source%\"%%I" %target% & echo %%I & GOTO :END /i /z /y /s /e
:END

TIMEOUT 10