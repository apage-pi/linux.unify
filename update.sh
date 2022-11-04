#/bin/bash
apt install gcc make
wget https://raw.githubusercontent.com/apage-pi/linux.unify/main/LinuxUnifyLogoLg.png
wget https://raw.githubusercontent.com/apage-pi/linux.unify/main/LinuxUnifyLogoSm.png
cp LinuxUnifyLogoSm.png /usr/share/plymouth/themes/spinner/bgrt-fallback.png
cp LinuxUnifyLogoLg.png /usr/share/plymouth/themes/spinner/watermark.png
cp LinuxUnifyLogoLg.png /usr/share/plymouth/ubuntu-logo.png
