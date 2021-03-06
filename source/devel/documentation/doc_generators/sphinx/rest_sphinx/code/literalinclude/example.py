# -*- coding: UTF-8 -*-
'''Returns a table of file names with the following informations

'''

__author__ = 'Patrick Vergain <pvergain@gmail.com>'


import hashlib
import logging
import zlib

from unipath import Path


log = logging.getLogger('get_table_hash')

class crc32(object):
    '''hashlib-compatible interface for CRC-32 support
    
    http://stackoverflow.com/questions/1742866/compute-crc-of-file-in-python
    '''
    name = 'crc32'
    digest_size = 4
    block_size = 1

    def __init__(self, arg=''):
        self.__digest = 0
        self.update(arg)

    def copy(self):
        copy = super(self.__class__, self).__new__(__class__)
        copy.__digest = self.__digest
        return copy

    def digest(self):
        return self.__digest

    def hexdigest(self):
        return '{:08x}'.format(self.__digest)

    def update(self, arg):
        self.__digest = zlib.crc32(arg, self.__digest) & 0xffffffff


