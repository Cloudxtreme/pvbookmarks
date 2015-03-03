

.. index::
   pair: Template; Cookiecutter
   ! Cookiecutter

.. _cookiecutter:

=============================
Cookiecutter
=============================


.. seealso::

   - https://github.com/audreyr/cookiecutter
   - http://pydanny.com/cookie-project-templates-made-easy.html
   - https://github.com/audreyr/cookiecutter#available-templates
   

.. figure:: cookiecutter_medium.png
   :align: center


.. contents::
   :depth: 3


Introduction
=============

What cookiecutter does is make creating and maintaining project templates easy 
and intuitive. 

This allow developers of all languages (not just Python) the ability to break 
free from cargo-cult configuration and follow patterns dictated by the experts 
who present their own cookiecutter templates. 

So if you don't like how the author of cookiecutter's creates her projects, you 
can use someone else's or roll your own.


cookiecutter-pypackage
=======================

.. seealso:: https://github.com/audreyr/cookiecutter-pypackage

Cookiecutter template for a Python package. See https://github.com/audreyr/cookiecutter.

* Free software: BSD license
* Vanilla testing setup with `unittest` and `python setup.py test`
* Travis-CI_: Ready for Travis Continuous Integration testing
* Tox_ testing: Setup to easily test for Python 2.6, 2.7, 3.3
* Sphinx_ docs: Documentation ready for generation with, for example, ReadTheDocs_

Usage
-----

Generate a Python package project::

    cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git

Then:

* Create a repo and put it there.
* Add the repo to your Travis CI account.
* Add the repo to your ReadTheDocs account + turn on the ReadTheDocs service hook.
* Release your package the standard Python way. Here's a release checklist: https://gist.github.com/audreyr/5990987

Not Exactly What You Want?
--------------------------

Don't worry, you have options:

Similar Cookiecutter Templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Nekroze/cookiecutter-pypackage`_: A fork of this with a :ref:`PyTest <pytest>` test runner,
  strict flake8 checking with Travis/Tox, and some docs and `setup.py` differences.

Fork This
~~~~~~~~~

If you have differences in your preferred setup, I encourage you to fork this
to create your own version. Once you have your fork working, add it to the
Similar Cookiecutter Templates list with a brief explanation. It's up to you
whether or not to rename your fork.

Or Submit a Pull Request
~~~~~~~~~~~~~~~~~~~~~~~~

I also accept pull requests on this, if they're small, atomic, and if they
make my own packaging experience better.


.. _Travis-CI: http://travis-ci.org/
.. _Tox: http://testrun.org/tox/
.. _Sphinx: http://sphinx-doc.org/
.. _ReadTheDocs: https://readthedocs.org/
.. _`Nekroze/cookiecutter-pypackage`: https://github.com/Nekroze/cookiecutter-pypackage



