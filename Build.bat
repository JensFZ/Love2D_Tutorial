rem Build final exe file
"c:\Program Files\WinRAR\WinRAR.exe" a -afzip "game.love" *.lua "assets"
copy /b build\love.exe+game.love build\game.exe
del game.love