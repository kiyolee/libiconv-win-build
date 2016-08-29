/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
/* Elementary types for the GNU UniString library.
   Copyright (C) 2002, 2005-2006, 2009-2011 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published
   by the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#ifndef _UNITYPES_H
#define _UNITYPES_H

/* Get uint8_t, uint16_t, uint32_t.  */
#if defined(_MSC_VER) && _MSC_VER >= 1600
#include <stdint.h>
#else
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
#endif

/* Type representing a Unicode character.  */
typedef uint32_t ucs4_t;

#endif /* _UNITYPES_H */
