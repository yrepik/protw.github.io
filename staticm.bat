if exist static\ del /s/q static\ > nul
if exist index.html del /s/q index.html > nul
if exist static.html del /s/q static.html > nul
if exist \temp1029384756 del /s/q \temp1029384756 > nul
if exist \temp1029384756 rd \temp1029384756 > nul

call tiddlywiki ./wiki --build

md \temp1029384756
xcopy /s/y wiki\output\*.* \temp1029384756 > nul
xcopy /s/y \temp1029384756\*.*  > nul
del /s/q \temp1029384756  > nul
rd \temp1029384756 > nul
del /s/q wiki\output > nul