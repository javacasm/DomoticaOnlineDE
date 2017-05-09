# Tema 8 - Uso de Raspberry Pi

## Mantenimiento

Una vez instalado el sistema, necesitamos de vez en cuando actualizarlo.

### Actualización (update)

Des un terminal/consola

Para buscar cambios

	sudo apt-get update

Para instalar estos cambios

	sudo apt-get upgrade

Para actualizar el sistema

	sudo apt-get dist-upgrade

Para instalar un paquete determinado

	sudo apt-get install paquete

(siempre podemos instalar desde la herramienta visual "Añadir programas" en el menú Preferencias)

### Cuidados eléctricos

* No existe protección en los terminales, con lo que es muy, muy sencillo quemar la placa.
* Cuidado con colocar la placa sobre un instrumento o superficie metálica. Mejor usar una caja
* Cuidado con los dispositivos que conectamos, pudieran demandar más potencia de la que le puede dar



## Problemas

Siempre podemos encontrarnos con problemas. Veamos los más frecuentes

### Alimentación

Necesitamos un mínimo de 2A

### Velocidad de la tarjeta

Se recomienda velocidad 10, una velocidad menor da problemas a bloqueos

### Espacio en disco

Al menos 2Gb por sistema operativo, mejor 4Gb

### No se ve nada en el monitor

¿Lo arrancaste con el monitor conectado? Es necesario arrancar con el monitor conectado

## Usos


### Para hacer cálculos con Mathematica

Hay una versión gratuita de Worlfram por defecto en Raspbian

TODO: IMAGEN Y ENLACE


### Vigilancia

Podemos usar su cámara (la original o una USB)

Usaremos un software standard de Linux: motion

	sudo apt-get install motion

Editamos la configuracion

	sudo nano /etc/motion/motion.conf

![usando motion](./images/motion.jpg)

Lo arrancamos

	sudo montion -n


Podremos acceder a la imagen en vivo de la cámara con

	 http://rasperry_ip:8001
