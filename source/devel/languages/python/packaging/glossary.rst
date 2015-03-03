﻿

======================================
Python Packaging User Guide Glossary
======================================


.. seealso::

   - https://python-packaging-user-guide.readthedocs.org/en/latest/glossary.html
   
   

:Last Reviewed: 10-29-2013

.. glossary::


    Binary Distribution

        A :term:`Distribution` format containing prebuilt files that only need
        to be moved to the correct location on the target system. As Python is a
        dynamically bound cross-platform language, many so-called "binary"
        distributions will contain only pure Python source code.


    Distribution

        A Python distribution is a versioned archive file that contains Python
        :term:`packages <package>`, :term:`modules <module>`, and other resource
        files that are used to distribute a :term:`Release`. The distribution file
        is what an end-user will download from the internet and install.

        It is common in Python to refer to a distribution using the term
        "package". While the two meanings of the term "package" is not always
        100% unambigous, the context of the term "package" is usually sufficient
        to distinguish the meaning of the word. For example, the python
        installation tool :ref:`pip` is an acronym for "pip installs
        packages". while technically the tool installs distributions. Even the
        site where distributions are distributed at is called the ":term:`Python
        Package Index <Python Package Index (PyPI)>`" (and not the "Python
        Distribution Index").


    Distutils

        A standard package that comes with the Python Standard Library that has
        support for creating :term:`distributions
        <Distribution>`. :ref:`Setuptools` provides enhancements to distutils,
        and is more commonly used than distutils by itself.


    Egg

        A :term:`Binary Distribution` format introduced by :ref:`setuptools`,
        which is being replaced by :term:`Wheel`.  For details, see `The
        Internal Structure of Python Eggs
        <http://pythonhosted.org/setuptools/formats.html>`_ and `Python Eggs
        <http://peak.telecommunity.com/DevCenter/PythonEggs>`_

    Extension Module

        A :term:`module` written in the low-level language of the Python implementation:
        C/C++ for Python, Java for Jython. Typically contained in a single
        dynamically loadable pre-compiled file, e.g.  a shared object (.so) file
        for Python extensions on Unix, a DLL (given the .pyd extension) for
        Python extensions on Windows, or a Java class file for Jython
        extensions.


    Known Good Set (KGS)

        A set of distributions at specified versions which are compatible with
        each other. Typically a test suite will be run which passes all tests
        before a specific set of packages is declared a known good set. This
        term is commonly used by frameworks and toolkits which are comprised of
        multiple individual distributions.


    Module

        The basic unit of code reusability in Python, existing in one of two
        types: :term:`Pure Module`, or :term:`Extension Module`.


    Package

        A directory containing an ``__init__.py`` file (ex.
        ``mypackage/__init__.py``), and also usually containing modules
        (possibly along with other packages). You can import a package: ``import
        mypackage``

        The term "package" is also often used to refer to a
        :term:`Distribution`.  For an explanation, see the the term
        ":term:`Distribution`".


    Package Index

        A repository of distributions with a web interface to automate
        :term:`Distribution` discovery and consumption.

        .. seealso:: :term:`PyPI <Python Package Index (PyPI)>`


    Project

        A library, framework, script, plugin, application, or collection of data
        or other resources, or some combination thereof.

        Python projects must have unique names, which are registered on
        :term:`PyPI <Python Package Index (PyPI)>`. Each project will then
        contain one or more :term:`Releases <Release>`, and each release may
        comprise one or more :term:`distributions <Distribution>`.

        Note that there is a strong convention to name a project after the name
        of the package that is imported to run that project. However, this
        doesn't have to hold true. It's possible to install a distribution from
        the project 'spam' and have it provide a package importable only as
        'eggs'.


    Pure Module

        A :term:`module` written in Python and contained in a single .py file (and
        possibly associated .pyc and/or .pyo files).

    Python Packaging Authority (PyPA)

        PyPA is an informal working group that maintains some of the most
        relevant projects for Python packaging. They host projects at
        https://github.com/pypa/ and https://bitbucket.org/pypa, and discuss
        issues at https://groups.google.com/forum/#!forum/pypa-dev.

    Python Package Index (PyPI)

        `PyPI <https://pypi.python.org/pypi>`_ is the default :term:`Package
        Index` for the Python community. It is open to all Python developers to
        consume and distribute their distributions.

    Release

        A snapshot of a :term:`Project` at a particular point in time, denoted
        by a version identifier.

        Making a release may entail the publishing of multiple
        :term:`Distributions <Distribution>`.  For example, if version 1.0 of a
        project was released, it could be available in both a source
        distribution format and a Windows installer distribution format.


    Source Archive

        An archive containing the raw source code for a :term:`Release`, prior to
        creation of an :term:`Source Distribution <Source Distribution (or "sdist")>` or
        :term:`Binary Distribution`.


    Source Distribution (or "sdist")

        A :term:`distribution <Distribution>` format (usually generated using ``python setup.py
        sdist``) that provides metadata and the essential source files needed
        for installing by a tool like :ref:`pip`, or for generating a
        :term:`Binary Distribution`.


    System Package

        A package provided in a format native to the operating system,
        e.g. an rpm or dpkg file.


    Wheel

        A :term:`Binary Distribution` format introduced by :ref:`python_pep_427`, which
        is intended to replace the :term:`Egg` format.  Wheel is currently
        supported by :ref:`pip`.

    Working Set

        A collection of :term:`distributions <Distribution>` available for
        importing. These are the distributions that are on the `sys.path`
        variable. At most, one :term:`Distribution` for a project is possible in
        a working set.


.. [1] Although the current terms have been reviewed, there's more terminology
       used by projects like :ref:`pip` and :ref:`setuptools` that needs to be
       added.
