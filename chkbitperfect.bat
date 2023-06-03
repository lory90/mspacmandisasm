@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST pacmanbuilt.bin ( fc /b pacmanbuilt.bin pacmanoriginal.bin
) ELSE echo pacmanbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST pacman.lst del pacman.lst
IF EXIST pacmanbuilt.bin del pacmanbuilt.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
