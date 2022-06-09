
echo "compilando ..."
make
echo "programando el dispositivo..."
openocd -f interface/stlink.cfg -f target/stm32f4x.cfg -c "program build/driver_AT45DB.hex verify reset"


### SOluciona errores de permisos en usb
#http://testdiego.github.io/blog/2014/08/06/instalando-openocd/
# https://techoverflow.net/2021/09/22/how-to-fix-platformio-stm32-error-libusb_open-failed-with-libusb_error_access/
##sudo apt -y install stlink-tools
##sudo systemctl restart udev