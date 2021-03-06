﻿

.. index::
   pair: Python tools; Pip
   pair: Chocolatey; Pip
   ! Pip


.. _pip_parameters:

===============
Pip parameters
===============



pip --version
==============

::

    (test_install) >  pip --version

::

    pip 1.3.1 from c:\users\pvergain\envs\test_install\lib\site-packages\pip-1.3.1-py2.7.egg (python 2.7)


pip -h
=======


::

    pip -h


::

    Usage:
      pip <command> [options]

    Commands:
      install                     Install packages.
      uninstall                   Uninstall packages.
      freeze                      Output installed packages in requirements format.
      list                        List installed packages.
      show                        Show information about installed packages.
      search                      Search PyPI for packages.
      zip                         Zip individual packages.
      unzip                       Unzip individual packages.
      bundle                      Create pybundles.
      help                        Show help for commands.

    General Options:
      -h, --help                  Show help.
      -v, --verbose               Give more output. Option is additive, and can be
                                  used up to 3 times.
      -V, --version               Show version and exit.
      -q, --quiet                 Give less output.
      --log <file>                Log file where a complete (maximum verbosity)
                                  record will be kept.
      --proxy <proxy>             Specify a proxy in the form
                                  [user:passwd@]proxy.server:port.
      --timeout <sec>             Set the socket timeout (default 15 seconds).
      --exists-action <action>    Default action when a path already exists:
                                  (s)witch, (i)gnore, (w)ipe, (b)ackup.
      --cert <path>               Path to alternate CA bundle.


pip install
===========


.. toctree::
   :maxdepth: 3
   
   install/index
   
