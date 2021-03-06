﻿

.. index::
   python data (byteformat)

===========================
Python byteformat module
===========================

.. seealso::

   - http://pypi.python.org/pypi/byteformat/


byteformat is a Python library and command line script for displaying numbers
of bytes as strings using standards-compliant human-readable units such as
'23 KB' or '1.25 terabytes'.


- Support for the two official and one de facto standards for bytes:

      * SI decimal units, e.g. 1000 bytes = 1 KB;
      * IEC binary units, e.g. 1024 bytes = 1 KiB;
      * Classic units, e.g. 1024 bytes = 1 KB.

- Supports the full set of decimal prefixes from kilo- to yotta- and the binary
  prefixes kibi- to yobi-.
- Generate strings using symbols (e.g. 'KB'), abbreviated names ('Kbyte') or
  full names ('kilobyte').
- Uses correct plural terms when needed.
- Allows the caller to explicitly choose which unit to use
- Automatically selects the best unit for a given number of bytes.
- Easily customise the output without subclassing.
- Importable as a Python library module.
- Runs as a command line script.




