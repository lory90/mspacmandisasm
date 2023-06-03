@echo off

asm68k /k /p /o ae- pacman.asm, pacmanbuilt.bin >errors.txt, , pacman.lst
fixheadr.exe pacmanbuilt.bin