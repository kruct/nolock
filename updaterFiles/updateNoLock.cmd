@echo off
echo Downloading: Latest NoLock release from "github.com"
cd updaterCore
updaterCoreMain https://github.com/kruct/nolock/archive/refs/heads/main.zip
exit