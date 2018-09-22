TARGET="/opt/server"
LOG=$TARGET"/log/boot.log"
FIRSTBOOT=$TARGET"/log/firstboot.log"

if [ ! -d $TARGET/log ]; then
   mkdir $TARGET/log
   echo 'executing firstboot.sh' > $FIRSTBOOT
   chmod +x $TARGET/firstboot.sh
   . $TARGET/firstboot.sh >> $FIRSTBOOT 2>&1
   reboot
else
   echo 'executing boot, firstboot already done' > $LOG
fi