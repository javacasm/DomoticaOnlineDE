# Tema 7 - Instalación de Raspberry Pi

## Materiales

¿Qué necesito para trabajar con la Raspberry Pi?

![Esquema completo de montaje de una Raspberry Pi](./images/MontajeCompleto.png)

## Componentes Obligatorios

* Raspbery Pi
* Fuente de alimentación de 5V con conector micro-USB con al menos 2A (mejor si son 2.5A)
* Tarjeta SD de al menos 4 GB  o más. Se recomienda de clase 10 por su velocidad
* Cable de red ethernet

Y si la vas a usar como un ordenador

* Monitor HDMI (o VGA con adaptador)
* Cable HDMI. Existen conversores, pero no todos funcionan bien con cables largos
* Teclado y raton USB (mejor si es inalambrico, porque consume menos)

## Opcionales

* Una caja o carcasa(para evitar problemas)
* Conexión a la red: Cable ethernet o dongle Wifi
* Hub USB con alimentación, así podremos añadir más dispositivos y evitaremos cargar la potencia de la Raspberry

![Carcasa hecha con Lego](./images/carcasaLego.jpg)

[¿Más carcasas?](https://www.google.es/search?q=raspberry+case&safe=off&espv=2&biw=838&bih=896&tbm=isch&tbo=u&source=univ&sa=X&ved=0CD4QsARqFQoTCP2a_r-_nMkCFci0GgodzpUMHA)

### ¿Dónde encontrarlos?

![Kit Raspberry Pi](http://www.electan.com/product_thumb.php?img=images/RaspberryKit2.jpg)



## ¿Dónde encontrarlos?

* [Raspberry.org](http://Raspberry.org)
* [www.electan.com](http://www.electan.com)
* [www.amazon.es](http://www.amazon.es)
* [www.bricogeek.com](http://www.bricogeek.com)
* [www.raspipc.com](http://www.raspipc.com)
¿Algún sitio donde comprar en Granada?

* [Kit base](http://www.electan.com/kit-raspberry-con-caja-alimentador-microsd-hdmi-usb-p-6584.html)
* [Shield electronica](http://tinkersphere.com/raspberry-pi-hats/633-starter-raspberry-pi-led-hat.html)
* [Kit amazon 1](http://www.amazon.es/s/ref=sr_pg_2?rh=i%3Aaps%2Ck%3Araspberry+pi+2+kit+starter&page=2&sort=price-asc-rank&keywords=raspberry+pi+2+kit+starter&ie=UTF8&qid=1449858467)
* [Kit Amazon 2 1](http://www.amazon.es/Raspberry-Pi-Quad-Core-Starter/dp/B00T7KW3Y0/ref=sr_1_15?ie=UTF8&qid=1449858467&sr=8-15&keywords=raspberry+pi+2+kit+starter)
* [Kit Amazon 3](http://www.amazon.es/Raspberry-Pi-Quad-Starter-Bundle/dp/B00T7OHE9A/ref=sr_1_18?ie=UTF8&qid=1449858497&sr=8-18&keywords=raspberry+pi+2+kit+starter)

* [Kit base](http://www.electan.com/kit-raspberry-con-caja-alimentador-microsd-hdmi-usb-p-6584.html)
* [Shield electronica](http://tinkersphere.com/raspberry-pi-hats/633-starter-raspberry-pi-led-hat.html)
* [kit amazon](http://www.amazon.es/s/ref=sr_pg_2?rh=i%3Aaps%2Ck%3Araspberry+pi+2+kit+starter&page=2&sort=price-asc-rank&keywords=raspberry+pi+2+kit+starter&ie=UTF8&qid=1449858467)
* [Destacado 1](http://www.amazon.es/Raspberry-Pi-Quad-Core-Starter/dp/B00T7KW3Y0/ref=sr_1_15?ie=UTF8&qid=1449858467&sr=8-15&keywords=raspberry+pi+2+kit+starter)
* [Destacado 2](http://www.amazon.es/Raspberry-Pi-Quad-Starter-Bundle/dp/B00T7OHE9A/ref=sr_1_18?ie=UTF8&qid=1449858497&sr=8-18&keywords=raspberry+pi+2+kit+starter)


## Sistemas operativos disponibles

### [Noobs](https://www.raspberrypi.org/downloads/noobs/)

### [Raspbian](https://www.raspberrypi.org/downloads/raspbian/)

### [Ubuntu Mate](https://ubuntu-mate.org/raspberry-pi/)

### [Snappy Ubuntu Core](https://developer.ubuntu.com/en/snappy/start/#snappy-raspi2)

### [Windows 10 IOT Core](http://ms-iot.github.io/content/en-US/Downloads.htm)

### [OSMC](https://osmc.tv/download/)

### [Chrome OS](http://www.hwlibre.com/chrome-os-llega-raspberry-pi-otras-placas-sbc/)

### [Android](https://www.raspberrypi.org/magpi/android-raspberry-pi/)


### ([¿Dónde encontrarlos?](https://www.raspberrypi.org/downloads/))

Una vez elegida la imagen vamos a proceder a instalar

## Instalación

¿Qué necesitamos?

* Formatear tarjeta ([http://www.sdcard.org/downloads/formatter_4/](http://www.sdcard.org/downloads/formatter_4/))
* Descargamos la imagen del sistema que queramos [http://www.raspberrypi.org/download](http://www.raspberrypi.org/download)
* ¿Qué imagen usar?
	* Empecemos con [Noobs](https://www.raspberrypi.org/blog/tag/noobs/)
	* [Instalación de Noobs](https://www.raspberrypi.org/help/noobs-setup/)

![noobs](./images/noobs.png)

* ¡¡¡Arrancar!!!
* Configuración

## Configuración

	sudo raspi-config

(Puede variar algo según la versión)

![config](./images/config.png)

![teclado](./images/teclado.png)

![avanzado](./images/avanzados.png)

![overclock](./images/overcock.png)


Una vez configurado podemos abrir el entorno visual con

	startx

![Arrancamos el entorno visual con startx](./images/raspX.png)

En cualquier momento podemos volver a reconfigurar

	sudo raspi-config


## Simuladores

¿Y si no tengo una Raspberry Pi?

Existen [varios emuladores](https://www.google.es/search?q=raspberry+simulator&oq=raspberry+simulator&aqs=chrome..69i57j69i65l3j69i60l2.3806j0j7&sourceid=chrome&es_sm=93&ie=UTF-8) aunque no espere que la experiencia sea la misma....

TODO: Sobre la velocidad....

### [En windows](http://www.diverteka.com/?p=66)

![qemu](./images/qemu.png)

* Descargamos la imagen en  [http://sourceforge.net/projects/rpiqemuwindows/](http://sourceforge.net/projects/rpiqemuwindows/)
* Emulador qemu
* Imagen (2012-07-15-wheezy-raspbian.img) o (http://downloads.raspberrypi.org/download.php?file=/images/raspbian/2013-05-25-wheezy-raspbian/2013-05-25-wheezy-raspbian.zip)

* Ejecutamos

		qemu-system-arm.exe -M versatilepb -cpu arm1176 -hda imagen/2013-09-25-wheezy-raspbian.img -kernel kernel-qemu -m 192 -append "root=/dev/sda2"

[Vídeo](http://www.youtube.com/watch?feature=player_embedded&v=QvqaNUx7-pU)

### [En ubuntu](http://www.cnx-software.com/2011/10/18/raspberry-pi-emulator-in-ubuntu-with-qemu/)

### [Simulando en virtualBox](https://www.raspberrypi.org/forums/viewtopic.php?f=9&t=2961)

### [Simulando el Sense Hat](https://www.raspberrypi.org/blog/sense-hat-emulator/)

### Usando Pixel el entorno de Raspberry Pi

![Pixel](https://www.raspberrypi.org/app/uploads/2016/09/newdesk-500x281.jpg)

Puedes usar Pixel el entorno gráfico de Rasperry en tu PC o MAC, solo necesitas descargar la [imagen](http://downloads.raspberrypi.org/pixel_x86/images/pixel_x86-2016-12-13/2016-12-13-pixel-x86-jessie.iso) desde un CD o USB.

Más detalles en [esta página](https://www.raspberrypi.org/blog/pixel-pc-mac/)
