#/bin/bash
VER=/lupdate/22.10.1.txt
if [ -f "$VER" ]; then
  echo "System already version 22.10.1. Skipping Update."
else
  mkdir /lupdate
  apt install gcc make
  wget https://raw.githubusercontent.com/apage-pi/linux.unify/main/LinuxUnifyLogoLg.png
  wget https://raw.githubusercontent.com/apage-pi/linux.unify/main/LinuxUnifyLogoSm.png
  cp LinuxUnifyLogoSm.png /usr/share/plymouth/themes/spinner/bgrt-fallback.png
  cp LinuxUnifyLogoLg.png /usr/share/plymouth/themes/spinner/watermark.png
  cp LinuxUnifyLogoLg.png /usr/share/plymouth/ubuntu-logo.png
  touch /luupdate/22.10.1.txt
  echo "Update Complete. System now version 22.10.1."
fi
