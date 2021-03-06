﻿
.. index::
   pylibftdi 

=========
pylibftdi
=========

.. seealso:: 

   - http://pypi.python.org/pypi/pylibftdi/

   
pylibftdi is a minimal Pythonic interface to FTDI devices using libftdi_.

.. _libftdi: http://www.intra2net.com/en/developer/libftdi/
   
Usage
=====

The primary interface is the Device class in the pylibftdi package; this 
gives serial access on relevant FTDI devices (e.g. the UM232R), providing a 
file-like interface (read, write). Baudrate is controlled with the 
baudrate property.

If a Device instance is created with mode='t' (text mode) then read() 
and write() can use the given encoding (defaulting to latin-1). 

This doesn't make a lot of difference on Python 2 (and can be omitted), 
but allows easier integration with passing unicode strings between devices 
in Python 3.

Multiple devices are supported by passing the desired device serial number 
(as a string) in the device_id parameter - this is the first parameter in 
both Device() and BitBangDevice() constructors.

::

	>>> from pylibftdi import Device
	>>>
	>>> with Device(mode='t') as dev:
	...     dev.baudrate = 115200
	...     dev.write('Hello World')


The pylibftdi.BitBangDevice wrapper provides access to the parallel IO mode 
of operation through the port and direction properties. 
These provide an 8 bit IO port including all the relevant bit operations to 
make things simple::

	>>> from pylibftdi import BitBangDevice
	>>>
	>>> with BitBangDevice('FTE00P4L') as bb:
	...     bb.direction = 0x0F  # four LSB are output(1), four MSB are input(0)
	...     bb.port |= 2         # set bit 1
	...     bb.port &= 0xFE      # clear bit 0


source
======
::

    hg clone https://bitbucket.org/codedstructure/pylibftdi
	
	
	
 
   

   
   
   
   
