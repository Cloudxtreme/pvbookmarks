﻿

.. index::
   pair: java; JCC


.. _java_jcc:

==================
Java JCC
==================


.. seealso::

   - http://pypi.python.org/pypi/JCC
   - http://lucene.apache.org/pylucene/jcc/documentation/readme.html
   - http://svn.apache.org/repos/asf/lucene/pylucene/trunk/jcc/CHANGES


A C++ code generator for calling Java from C++/Python.


For changes since earlier releases, see: http://svn.apache.org/repos/asf/lucene/pylucene/trunk/jcc/CHANGES

JCC is a C++ code generator for producing the code necessary to call into
Java classes from CPython via Java's Native Invocation Interface (JNI).

JCC generates C++ wrapper classes that hide all the gory details of JNI access
as well Java memory and object reference management.

JCC generates CPython types that make these C++ classes accessible from a
Python interpreter.

JCC attempts to make these Python types pythonic by detecting iterators and
property accessors.

Iterators and mappings may also be declared to JCC.

JCC has been built on Python 2.3, 2.4, 2.5, 2.6 and 2.7 and has been used
with various Java Runtime Environments such as Sun Java 1.4, 1.5 and 1.6,
Apple's Java 1.4 and 1.5 on Mac OS X and open source Java OpenJDK 1.7 builds.

An experimental port to Python 3 is available from a branch: http://svn.apache.org/repos/asf/lucene/pylucene/branches/python_3/jcc/

JCC is supported on Mac OS X, Linux, Solaris and Windows.

JCC is written in C++ and Python. It uses Java's reflection API to do its job
and needs a Java Runtime Environment to be present to operate.

JCC is built with distutils or setuptools::

    python setup.py build
    sudo python setup.py install



