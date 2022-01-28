@echo off

REM User settings
REM If you want paths relative to the .bat script's location, use %CD% or %~dp0, or use the full file paths. However you do it, you MUST include a `\` at the end. %~dp0 appends a `\` at the end, %CD% does not.
REM Do not add quotation marks around your folder or file names.

set src=C:\Users\JensF\Desktop\Development\Love2D\Tutorial\src\
set love=C:\Program Files\LOVE\
set build=C:\Users\JensF\Desktop\Development\Love2D\Tutorial\Build\
set name=Tutorial1

REM Execute program
set output=%build%%name%
powershell Compress-Archive -Path '%src%*' -DestinationPath '%output%.zip' -Force
move "%output%.zip" "%output%.love"
copy /b "%love%love.exe"+"%output%.love" "%build%%name%.exe"
xcopy "%love%license.txt" "%build%" /r /q /y
xcopy "%love%love.dll" "%build%" /r /q /y
xcopy "%love%SDL2.dll" "%build%" /r /q /y
xcopy "%love%lua51.dll" "%build%" /r /q /y
xcopy "%love%OpenAL32.dll" "%build%" /r /q /y
xcopy "%love%mpg123.dll" "%build%" /r /q /y
xcopy "%love%msvcp120.dll" "%build%" /r /q /y
xcopy "%love%msvcr120.dll" "%build%" /r /q /y
del "%output%.love"