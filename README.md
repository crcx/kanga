    __ __  ___  __  __   ___   ___ 
    || // // \\ ||\ ||  // \\ // \\
    ||<<  ||=|| ||\\|| (( ___ ||=||
    || \\ || || || \||  \\_|| || ||
    a curses based interface to RETRO

## Background

RETRO is a Forth dialect drawing influences from many sources. It uses
some, but not all of Chuck Moore's newer ideas. It's clean, elegant,
and tiny. It may not have many features, and it may not be particularly
useful by itself, but it's easy to grasp and easily adapted to various
uses.

The Retro language consists of a couple of parts. At the heart is a
tiny virtual machine called Nga. This is embedded into a larger system
providing platform-specific I/O. And atop this is the actual language,
stored as a portable Nga memory image.

There are several interface layers available for Retro:

rre (run retro & exit)

This is the standard interface for Unix-like systems. It runs programs
from the command line and lacks interactivity (though it is very useful
for CGI). It's possible to get some interactivity, using a bit of shell
scripting and reading input from /dev/stdin, but it's not fun.

repl

Repl is a minimal interactive environment for Retro. Intended as a quick
testbed, this works ok, but again is very barebones and not much fun to
actually use.

On iOS there's a much nicer environment that includes an editor, simple
interactive input, and simulated console output.

And now Kanga.

## Kanga

Kanga is a curses based interface to Retro. It uses curses to portably
handle the basic I/O and layout, and emulates an environment that was
used in Retro back in the 2001 timeframe.

The basic interface is:

    +------------------------------------------------------------------+
    | output area                                                      |
    |                                                                  |
    |                                                                  |
    |                                                                  |
    +------------------------------------------------------------------+
    | input area                                     | stack items     |
    +------------------------------------------------------------------+

The console output on top, and below this is the input area. To the right
is also a stack display showing the top five items on the stack. (The
topmost item on the left, is indicated by brackets.)

Input is processed as it is entered (after space, enter/return, or tab).
Press ESC to exit.

## Quick Start

For Linux and macOS:

    make
    ./kanga

To run Kanga you need the `kanga` binary and the `ngaImage`.

## Legalities

Permission to use, copy, modify, and/or distribute this software for
any purpose with or without fee is hereby granted, provided that the
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.

Retro 12 is:

    Copyright (c) 2008 - 2017, Charles Childers

Portions of the code derive from Retro 11, which is:

    Copyright (c) 2008 - 2016, Charles Childers
    Copyright (c) 2012 - 2013, Michal J Wallace
    Copyright (c) 2009 - 2011, Luke Parrish
    Copyright (c) 2009 - 2010, JGL
    Copyright (c) 2010 - 2011, Marc Simpson
    Copyright (c) 2011 - 2012, Oleksandr Kozachuk
    Copyright (c) 2010,        Jay Skeer
    Copyright (c) 2010,        Greg Copeland
    Copyright (c) 2011,        Aleksej Saushev
    Copyright (c) 2011,        Foucist
    Copyright (c) 2011,        Erturk Kocalar
    Copyright (c) 2011,        Kenneth Keating
    Copyright (c) 2011,        Ashley Feniello
    Copyright (c) 2011,        Peter Salvi
    Copyright (c) 2011,        Christian Kellermann
    Copyright (c) 2011,        Jorge Acereda
    Copyright (c) 2011,        Remy Moueza
    Copyright (c) 2012,        John M Harrison
    Copyright (c) 2012,        Todd Thomas
