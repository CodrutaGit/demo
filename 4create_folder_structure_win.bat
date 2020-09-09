@ECHO OFF

Set dir=E:\OutputTransformPDF2AFP_APPE\demo_win\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_AFP\demo_TestFiles\
echo mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_AFP\demo_TestFiles\

mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_PDF\demo_TestFiles\
echo mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_PDF\demo_TestFiles\

mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\demo_MF\
echo mkdir E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\demo_MF\

c:\Windows\System32\xcopy.exe /T /e  E:\OutputTransformPDF2AFP_APPE\demo_structura_foldere\demo_output\demo_TestFiles\* E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_AFP\demo_TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e E:\OutputTransformPDF2AFP_APPE\demo_structura_foldere\demo_output\demo_TestFiles\* E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_PDF\demo_TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e E:\OutputTransformPDF2AFP_APPE\demo_structura_foldere\demo_output\demo_TestFiles\* E:\OutputTransformPDF2AFP_APPE\demo_win\demo_output_TIFF\demo_MF\ /s /i
