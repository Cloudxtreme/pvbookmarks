
.. index::
   pair: sphinx extension ; pyreverse
   pair: UML ; pyreverse


.. _sphinx_pyreverse_extension:
.. _pyreverse:

============================
Sphinx pyreverse extension
============================

.. seealso::

   - https://github.com/alendit/sphinx-pyreverse


.. contents::
   :depth: 3


Presentation
============


A simple sphinx extension to generate a UML diagram from python module.


Install
=======

Install with::

    pip install -e git+https://github.com/alendit/sphinx-pyreverse.git


Usage
=====

Add "sphinx-pyreverse" to your conf.py (make sure it is in the PYTHONPATH).

Call the directive with path to python module as content:

::

    .. uml::
            {{path to the module}}


Requires pyreverse from pylint
==============================



