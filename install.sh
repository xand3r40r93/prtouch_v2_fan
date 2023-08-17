mkdir -p /usr/share/klipper/klippy/extras/prtouch_v2_fan
wget https://github.com/xand3r40r93/prtouch_v2_fan/raw/master/__init__.py -O /usr/share/klipper/klippy/extras/prtouch_v2_fan/__init__.py
wget https://github.com/xand3r40r93/prtouch_v2_fan/raw/master/prtouch_v2_fan.pyc -O /usr/share/klipper/klippy/extras/prtouch_v2_fan/prtouch_v2_fan.pyc
if [ -z `cat /usr/data/printer_data/config/printer_params.cfg | grep prtouch_v2_fan` ]; then
  echo [prtouch_v2_fan] >> /usr/data/printer_data/config/printer_params.cfg
fi
/etc/init.d/S55klipper_service restart
