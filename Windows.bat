@echo off
title APLICATIVOS WINDOWS
mode 60,20
color 0a
:inicio
cls
echo.
echo ==========================
echo  APLICATIVOS WINDOWS
echo ==========================
echo [1] Teclado Virtual
echo [2] Bloco de Notas
echo [3] Paint
echo [4] Calculadora
echo [5] Painel de Controle
echo [6] Windows Explorer
echo [R] Retornar ao Menu Principal
echo ==========================
echo.
set/p op=Digite a opcao desejada:

if /i %op% == 1 (goto:teclado)
if /i %op% == 2 (goto:notas)
if /i %op% == 3 (goto:paint)
if /i %op% == 4 (goto:calculadora)
if /i %op% == 5 (goto:painel_de_controle)
if /i %op% == 6 (goto:windows)
if /i %op% == r (goto:rmenu) else (
	echo.
	echo --------------
	echo  OPÇÃO INVÁLIDA!
	echo --------------
	pause > nul
	goto:inicio)
	
:teclado
start osk.exe
goto:inicio	

:notas
start notepad.exe
goto:inicio	

:paint
start paint.exe
goto:inicio

:calculadora
start calc.exe
goto:inicio

:painel_de_controle
start control.exe
goto:inicio

:windows
start explorer.exe
goto:inicio

:rmenu
set /p resp=Deseja voltar ao menu principal? [S/N]: 
if /i %resp% == s (call Menu.bat) else (
	echo.
	goto:inicio)