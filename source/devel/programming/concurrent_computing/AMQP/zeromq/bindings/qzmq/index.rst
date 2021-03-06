
.. index::
   pair: Qt ; qzmq library


.. _qzmq_library:

======================
qzmq  library
======================

.. seealso::

   - https://github.com/jkarneges/qzmq


Code
====

Author: Justin Karneges <justin@affinix.com>

Yet another Qt binding for ZeroMQ. It wraps the C API of libzmq.

Some features:

- Completely event-driven, with both read and write notifications.
- Multipart messages are read/written in whole. To make this possible, the
  Socket object maintains internal buffers, and for example it will not
  generate a read notification until all parts of a message have arrived.
- For convenience, it is not necessary to create a Context explicitly. If a
  Socket is created without one, then a globally shared Context will be
  created automatically.
- Some handy extra classes. For example, RepRouter makes it easy to write a
  REP socket server that handles multiple requests simultaneously.

