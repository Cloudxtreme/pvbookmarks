
======
README
======

python-libusb1 is a Python wrapper for libusb-1.0

URL: http://github.com/vpelletier/python-libusb1

Requirements:

- Python 2.4+ (2.6+ recommended) http://www.python.org/
  Not compatible with Python 3
- ctypes (included in Python 2.5+) http://python.net/crew/theller/ctypes/
- libusb-1.0 http://www.libusb.org/wiki/libusb-1.0

OS
==

python-libusb1 is expected to work on any OS supported by libusb. It is known
to be used on:

- Linux
- Windows
- OSX

Contents
========

- libusb1.py
  Bare ctype wrapper, inspired from library C header file.
- usb1.py
  Python-ish (classes, exceptions, ...) wrapper around libusb1.py .
  See docstrings (pydoc recommended) for usage.
- setup.py
  To package as python egg.
- stdeb.cfg
  To package as Debian package. See https://github.com/astraw/stdeb .
- testUSB1.py
  Very limited regression test, only testing functions which do not require a
  USB device.

Install
=======

::

    python setup.py install


(you might need root access to do this)

History
=======


python-libusb1 was created to get a python wrapper supporting asynchronous
features of libusb1.

0.0.1
  Initial release
0.1.1
  Massive rework of usb1.py, making it more python-ish and fixing some
  memory leaks.
0.1.2
  Deprecate "transfer" constructor parameter to allow instance reuse.

See also (other projects, different author):
  pyusb: another python wrapper for (among others) libusb1
    http://sourceforge.net/projects/pyusb/

