@echo off
mvn --batch-mode clean package
if errorlevel 1 pause
