﻿

.. index::
   pair: Android; Androgard
   ! APKIL

.. _apkill:

=======================================
APKIL (an APK Instrumentation Library)
=======================================


.. seealso::

   - https://github.com/kelwin/apkil
   - http://code.google.com/p/droidbox/wiki/APIMonitor


.. contents::
   :depth: 3


Description
============

APKIL is an APK Instrumentation Library.
Supported by Google Summer of Code 2012 and The Honeynet Project.

Author: Kun Yang <kelwya@gmail.com>
Project Wiki: http://code.google.com/p/droidbox/wiki/APIMonitor

::

    apimonitor.py


::

    DroidBox APIMonitor script(currently beta).

    usage: apimonitor.py [-h] [-o, --output dirpath] [-a, --api apilist] [-v, --version] filename

    Repackage apk to monitor arbitrary APIs.

    positional arguments:
      filename              path of APK file

    optional arguments:
      -h, --help            show this help message and exit
      -o, --output dirpath  output directory
      -a, --api apilist     config file of API list
      -v, --version         show program's version number and exit

apkil/apk.py
    A light weight module to play with apk to develop in the future. Currently we use androguard/apk.py.

apkil/smali.py
    Parse smali files of APKs to tree based structure.

apkil/monitor.py
    Inject monitor code to smali tree.

apkil/api.py
    Derive inheritence relationship of Android API from android.jar

process_api.py
    Call apkil/api.py to build and store API database.

api_permissions.py
    Permissions from http://www.android-permissions.org/ which may be used in the future.


APKIL source code
==================

.. seealso::

   - https://github.com/kelwin/apkil
