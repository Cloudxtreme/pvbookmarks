﻿

.. index::
   pair: python cli modules ; aaargh 

.. _python_aaargh:

=========================
Python aaargh module
=========================

.. seealso::

   - http://pypi.python.org/pypi/aaargh/
   - https://github.com/wbolster/aaargh

.. contents::
   :depth: 3
   
Introduction
============   

Aaargh: an astonishingly awesome application argument helper.

Aaargh is a Python module that makes building friendly command line applications 
really easy. 

Applications built with Aaargh provide a single executable with a  subcommand 
for each exposed Python function. 

Each subcommand may have its own command line arguments. This is similar to 
the way version control systems provide many different commands using a single 
entry point. (Examples include bzr commit and git checkout).

Aaargh is named after one of the castles in the movie Monty Python and the 
Holy Grail. The acronym Aaargh expands to an astonishingly awesome application 
argument helper, but omits a few letters to make it triple A.

Aaargh works with both Python 2.6+ and Python 3.

Rationale
=========

The Python standard library contains the optparse, getopt, and argparse modules, 
and out in the wild you will find many alternative command line interface 
libraries stacked on top of these, such as Cliff, Cement, opster, plac, and 
many others. 

These libraries either separate the CLI part of your application from the actual 
code, force yet another API upon you, or even force you to hide your code in 
non-obvious framework constructs.

This makes you scream aaargh. And, lo and behold, here it is!


Usage
=====

Aaargh delegates almost all of its work to the argparse module, which does a 
great job handling arguments and printing usage information. 

However, argparse is a bit verbose and cumbersome for many simple applications, 
so Aaargh lets application authors minimize boilerplate code by wrapping 
commonly used argparse features in a few non-intrusive decorators. 

Aaargh does not hide the argparse API, since the decorators have exactly the 
same API as their argparse counterparts. This is a deliberate design decision, 
and this is what makes Aaargh different from its many alternatives.

The docstrings in the aaargh.py file contain all information you need to use 
Aaargh. 

Refer to the argparse documentation for information on specifying arguments, 
providing defaults, adding help texts, and so on.

