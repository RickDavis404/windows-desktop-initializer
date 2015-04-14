@echo off
echo Install Chocolatey
powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

echo Install Core Tools
choco install -y clamwin googlechrome.canary googlechrome 
choco install -y hipchat

echo Install DEV Tools
choco install -y git fiddler cygwin vim

echo Install SysAdm Tools
choco install -y autoit notepadplusplus wireshark 7zip console2 virtualclonedrive

echo Install Virtualization Tools
choco install -y virtualbox vagrant

echo Installs Complete
pause
