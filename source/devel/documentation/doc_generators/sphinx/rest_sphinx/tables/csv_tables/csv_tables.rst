

.. index::
   pair: CSV; Tables


.. _rest_csv_tables:

=====================
**csv tables**
=====================

.. seealso::

   - http://docutils.sourceforge.net/docs/ref/rst/directives.html#csv-table

::

    .. csv-table:: Balance Sheet
       :header: Description,In,Out,Balance
       :widths: 20, 10, 10, 10
       :stub-columns: 1

       Travel,,230.00,-230.00
       Fees,,400.00,-630.00
       Grant,700.00,,70.00
       Train Fare,,70.00,**0.00**



Gives:


.. csv-table:: Balance Sheet
   :header: Description,In,Out,Balance
   :widths: 20, 10, 10, 10
   :stub-columns: 1

   Travel,,230.00,-230.00
   Fees,,400.00,-630.00
   Grant,700.00,,70.00
   Train Fare,,70.00,**0.00**
