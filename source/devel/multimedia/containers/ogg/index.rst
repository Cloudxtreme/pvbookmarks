﻿

.. index::
   pair: Container ; Ogg
   ! Ogg


.. _ogg_container:

=======================
ogg container
=======================


.. figure:: XiphophorusLogo.png
   :align: center


.. seealso::

   - http://en.wikipedia.org/wiki/Ogg
   - :ref:`vorbis_codec`

.. contents::
   :depth: 4


Introduction
============

Ogg is a free, open container format maintained by the Xiph.Org Foundation.

The creators of the Ogg format state that it is unrestricted by software patents
and is designed to provide for efficient streaming and manipulation of high quality
digital multimedia.

The Ogg container format can multiplex a number of independent streams for
audio, video, text (such as subtitles), and metadata.

In the Ogg multimedia framework, Theora provides a lossy video layer.

The audio layer is most commonly provided by the music-oriented Vorbis format
but other options include the human speech compression codec Speex, the lossless
audio compression codec FLAC, and OggPCM.


Before 2007, the .ogg filename extension was used for all files whose content
used the Ogg container format. Since 2007, the Xiph.Org Foundation recommends
that .ogg only be used for Ogg Vorbis audio files.

The Xiph.Org Foundation decided to create a new set of file extensions and media
types to describe different types of content such as:

- .oga for audio only files,
- .ogv for video with or without sound (including Theora),
- and .ogx for multiplexed Ogg.

As of August 4, 2011, the current version of the Xiph.Org Foundation's reference
implementation, is libogg 1.3.0.
Another version, libogg2, has been in development, but is awaiting a rewrite as
of 2008.

Both software libraries are free software, released under the new BSD license.

Ogg reference implementation was separated from Vorbis on September 2, 2000.

Because the format is free, and its reference implementation is not subject to
restrictions associated with copyright, Ogg's various codecs have been
incorporated into a number of different free and proprietary media players, both
commercial and non-commercial, as well as portable media players and GPS receivers
from different manufacturers.

