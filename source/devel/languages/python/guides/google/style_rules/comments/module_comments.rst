
.. index::
   pair: python; Modules comment


.. _python_modules_comment:


================
Modules comment
================


Every file should contain the following items, in order:

- a copyright statement (for example, Copyright 2008 Google Inc.)
- a license boilerplate. Choose the appropriate boilerplate for the license
  used by the project (for example, Apache 2.0, BSD, LGPL, GPL)
- an author line to identify the original author of the file

Functions and Methods
=====================

As used in this section "function" applies to methods, function, and generators.

A function must have a docstring, unless it meets all of the following criteria:

- not externally visible
- very short
- obvious

A docstring should give enough information to write a call to the function
without reading the function's code. A docstring should describe the function's
calling syntax and its semantics, not its implementation.

For tricky code, comments alongside the code are more appropriate than using
docstrings.

Certain aspects of a function should be documented in special sections,
listed below.

Each section begins with a heading line, which ends with a colon.

Sections should be indented two spaces, except for the heading.

Args
    List each parameter by name. A description should follow the name, and be
    separated by a colon and a space. If the description is too long to fit on
    a single 80-character line, use a hanging indent of 2 or 4 spaces
    (be consistent with the rest of the file).

    The description should mention required type(s) and the meaning of the argument.



Returns (or Yields: for generators)

    Describe the type and semantics of the return value. If the function only
    returns None, this section is not required.

Raises
    List all exceptions that are relevant to the interface.


::

    def fetch_bigtable_rows(big_table, keys, other_silly_variable=None):
        """Fetches rows from a Bigtable.

        Retrieves rows pertaining to the given keys from the Table instance
        represented by big_table.  Silly things may happen if
        other_silly_variable is not None.

        Args:
            big_table: An open Bigtable Table instance.
            keys: A sequence of strings representing the key of each table row
                to fetch.
            other_silly_variable: Another optional variable, that has a much
                longer name than the other args, and which does nothing.

        Returns:
            A dict mapping keys to the corresponding table row data
            fetched. Each row is represented as a tuple of strings. For
            example:

            {'Serak': ('Rigel VII', 'Preparer'),
             'Zim': ('Irk', 'Invader'),
             'Lrrr': ('Omicron Persei 8', 'Emperor')}

            If a key from the keys argument is missing from the dictionary,
            then that row was not found in the table.

        Raises:
            IOError: An error occurred accessing the bigtable.Table object.
        """
        pass
