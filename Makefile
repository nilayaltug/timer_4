# MPLAB IDE generated this makefile for use with GNU make.
# Project: uygulama-22.mcp
# Date: Sat Oct 27 18:25:21 2018

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

uygulama-22.cof : uygulama-22.o
	$(CC) /p16F877A "uygulama-22.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"uygulama-22.cof" /M"uygulama-22.map" /W /x

uygulama-22.o : uygulama-22.asm C:/Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F877A.INC
	$(AS) /q /p16F877A "uygulama-22.asm" /l"uygulama-22.lst" /e"uygulama-22.err" /d__DEBUG=1

clean : 
	$(CC) "uygulama-22.o" "uygulama-22.hex" "uygulama-22.err" "uygulama-22.lst" "uygulama-22.cof"

