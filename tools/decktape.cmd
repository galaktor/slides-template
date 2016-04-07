@ECHO OFF

REM Uses the 'decktape' tool to capture a reveal.js presenation
REM into a PDF file. Pretends to be a browser and takes screenshots.
REM         https://github.com/astefanutti/decktape
REM Requires installation of 'decktape' into the path set at
REM 'dekctaped' below.

REM set to where decktape is installed
SET decktaped=C:\Users\restrada\code\decktape

REM TODO: make -s configurable; default to 1280x1024
REM TODO: make --load-pause configurable; default to 1000?
REM TODO: make -p configurable; default to 5000

REM TODO: if not present, download decktape and phantomjs to sub-directory

echo decktaped:....%decktaped%
echo slides url:...%1
echo out path:.....%2

%decktaped%\bin\phantomjs.exe %decktaped%\decktape.js -s 1280x1024 -p 5000 --load-pause 1000 --screenshots-format png reveal %1 %2
