

.. index::
   pair: Unqlite ; No-SQL

.. _unqlite:

=================
Unqlite database
=================

.. seealso::

   - http://unqlite.org/


.. contents::
   :depth: 3

Introduction
=============

``UnQLite`` is a in-process software library which implements a self-contained, 
serverless, zero-configuration, transactional NoSQL database engine. 

UnQLite is a document store database similar to MongoDB, Redis, CouchDB etc. as 
well a standard Key/Value store similar to BerkeleyDB, LevelDB, etc.


UnQLite is an embedded NoSQL (Key/Value store and Document-store) database 
engine. 

Unlike most other NoSQL databases, UnQLite does not have a separate server process. 

UnQLite reads and writes directly to ordinary disk files. 

A complete database with multiple collections, is contained in a single disk file. 

The database file format is cross-platform, you can freely copy a database 
between 32-bit and 64-bit systems or between big-endian and little-endian 
architectures.  


Python bindings
===============

.. seealso::

   - http://charlesleifer.com/blog/python-bindings-for-unqlite-an-embedded-nosql-database-json-document-store/
   - https://github.com/coleifer/unqlite-python






