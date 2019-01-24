TARGET="/opt/app"
LOG=$TARGET"/log/boot.log"
FIRSTBOOT=$TARGET"/log/firstboot.log"

if [ ! -d $TARGET/log ]; then
   mkdir $TARGET/log
   echo 'executing firstboot.sh' > $FIRSTBOOT

   # Execute firstboot.sh. More info here: https://stackoverflow.com/questions/8352851/how-to-call-shell-script-from-another-shell-script
   chmod +x $TARGET/firstboot.sh
   # More info here: https://www.brianstorti.com/understanding-shell-script-idiom-redirect/
   # More info here: https://askubuntu.com/questions/382793/whats-is-the-difference-between-and-in-shell-command
   . $TARGET/firstboot.sh >> $FIRSTBOOT 2>&1
   reboot
else
   echo 'executing boot, firstboot already done' > $LOG
fi