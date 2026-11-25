/* Copyright (C) 2005 The cairomm Development Team
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, see <https://www.gnu.org/licenses/>.
 */

#ifndef __CAIROMM_H
#define __CAIROMM_H

/** @mainpage Cairomm: A C++ wrapper for the cairo graphics library
 *
 * @section License
 * Cairomm is available under the terms of the LGPL license
 *
 * @section Introduction
 * If you're just beginning to learn cairomm, a good place to start is with the
 * Cairo::Surface and Cairo::Context classes.  In general terms, you draw onto
 * a Surface using the graphics settings specified in your Context.
 *
 * @section basics Basic Usage
 *
 * Include the cairomm header:
 * @code
 * #include <cairomm/cairomm.h>
 * @endcode
 * This includes every header installed by cairomm.
 * You may include individual headers, such as @c cairomm/context.h instead.
 *
 * If your  source file is @c program.cc, you can compile it with:
 * @code
 * g++ program.cc -o program  `pkg-config --cflags --libs cairomm-1.16`
 * @endcode
 * If your version of g++ is not C++17-compliant by default,
 * add the @c -std=c++17 option.
 *
 * If you use <a href="https://mesonbuild.com/">Meson</a>, include the following
 * in @c meson.build:
 * @code
 * cairomm_dep = dependency('cairomm-1.16')
 * program_name = 'program'
 * cpp_sources = [ 'program.cc' ]
 * executable(program_name,
 *   cpp_sources,
 *   dependencies: [ cairomm_dep ]
 * )
 * @endcode
 *
 * Alternatively, if using autoconf, use the following in @c configure.ac:
 * @code
 * PKG_CHECK_MODULES([CAIROMM], [cairomm-1.16])
 * @endcode
 * Then use the generated @c CAIROMM_CFLAGS and @c CAIROMM_LIBS variables in the
 * project Makefile.am files. For example:
 * @code
 * program_CPPFLAGS = $(CAIROMM_CFLAGS)
 * program_LDADD = $(CAIROMM_LIBS)
 * @endcode
 */

#include <cairommconfig.h>
#include <cairomm/context.h>
#include <cairomm/device.h>
#include <cairomm/enums.h>
#include <cairomm/exception.h>
#include <cairomm/fontface.h>
#include <cairomm/fontoptions.h>
#include <cairomm/matrix.h>
#include <cairomm/path.h>
#include <cairomm/pattern.h>
#include <cairomm/region.h>
#include <cairomm/scaledfont.h>
#include <cairomm/surface.h>

#endif //__CAIROMM_H

// vim: ts=2 sw=2 et
