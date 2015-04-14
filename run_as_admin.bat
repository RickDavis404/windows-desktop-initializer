@echo off
echo Install Chocolatey
powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

echo Install Core Tools
choco install -y clamwin googlechrome.canary googlechrome 
choco install -y hipchat

echo Install DEV Tools
choco install -y git fiddler vim

echo Install SysAdm Tools
choco install -y autoit notepadplusplus wireshark