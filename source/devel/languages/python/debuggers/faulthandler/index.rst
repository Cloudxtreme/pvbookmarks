﻿

.. index::
   pair: Python; Faulthandler


.. _python_faulthandler:

=======================
Python faulthandler
=======================


.. seealso::

   - https://pypi.python.org/pypi/faulthandler
   - http://faulthandler.readthedocs.org/
   - https://docs.python.org/dev/library/faulthandler.html


.. contents::
   :depth: 3


Source code
===========

.. seealso::

   - https://github.com/haypo/faulthandler/


Description
===========


Fault handler for SIGSEGV, SIGFPE, SIGABRT, SIGBUS and SIGILL signals: display
the Python traceback and restore the previous handler. Allocate an alternate
stack for this handler, if sigaltstack() is available, to be able to allocate
memory on the stack, even on stack overflow (not available on Windows).

Import the module and call faulthandler.enable() to enable the fault handler.

The fault handler is called on catastrophic cases and so it can only use
signal-safe functions (eg. it doesn't allocate memory on the heap). That's why
the traceback is limited: it only supports ASCII encoding (use the
backslashreplace error handler for non-ASCII characters) and limits each string
to 100 characters, doesn't print the source code in the traceback (only the
filename, the function name and the line number), is limited to 100 frames and
100 threads.

By default, the Python traceback is written to the standard error stream. Start
your graphical applications in a terminal and run your server in foreground to
see the traceback, or pass a file to faulthandler.enable().

faulthandler is implemented in C using signal handlers to be able to dump a
traceback on a crash or when Python is blocked (eg. deadlock).

Website:
http://faulthandler.readthedocs.org/

faulthandler is part of Python since Python 3.3:
http://docs.python.org/dev/library/faulthandler.html
