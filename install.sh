wget https://github.com/xand3r40r93/prtouch_v2_fan/raw/master/prtouch_v2_fan.pyc -O /usr/share/klipper/klippy/extras/prtouch_v2_fan.pyc
if [ -z `cat /usr/data/printer_data/config/printer.cfg | grep prtouch_v2_fan` ]; then
  echo [prtouch_v2_fan] >> /usr/data/printer_data/config/printer.cfg
fi
/etc/init.d/S55klipper_service restart
