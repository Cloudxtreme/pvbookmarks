﻿

.. index::
   pair: Environment ; Variables
   pair: Environment ; Linux


.. _gnu_linux_environment:

==========================
GNU/Linux environment
==========================


.. contents::
   :depth: 3

The Environment Modules package
===============================


.. seealso:: http://modules.sourceforge.net/


The Environment Modules package provides for the dynamic modification of a
user's environment via modulefiles.

Each modulefile contains the information needed to configure the shell for an
application.

Once the Modules package is initialized, the environment can be modified on a
per-module basis using the module command which interprets modulefiles.

Typically modulefiles instruct the module command to alter or set shell
environment variables such as PATH, MANPATH, etc. modulefiles may be shared
by many users on a system and users may have their own collection to supplement
or replace the shared modulefiles.

Modules can be loaded and unloaded dynamically and atomically, in an clean
fashion. All popular shells are supported, including bash, ksh, zsh, sh, csh,
tcsh, as well as some scripting languages such as perl.

Modules are useful in managing different versions of applications.
Modules can also be bundled into metamodules that will load an entire suite of
different applications.


.. seealso::  :ref:`fabric`
