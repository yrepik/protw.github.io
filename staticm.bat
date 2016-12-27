if exist static\     del /s/q static\*.* > nul
if exist static\     rd static\ > nul
if exist index.html  del /s/q index.html > nul
if exist static.html del /s/q static.html > nul

if exist wiki\output\static\ del /s/q wiki\output\static\*.* > nul
if exist wiki\output\static\ rd wiki\output\static\ > nul
if exist wiki\output         del /s/q wiki\output\*.* > nul
if exist wiki\output         rd wiki\output > nul

call tiddlywiki ./wiki --build

move wiki\output\static static > nul
move wiki\output\*.* . > nul
rd   wiki\output\ > nul
