/* Copyright Joyent, Inc. and other Node contributors. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */

module libuv.c.uv_errno;

extern(C):
nothrow:
@nogc:

import core.stdc.errno;

enum UV__EOF     = -4095;
enum UV__UNKNOWN = -4094;

enum UV__EAI_ADDRFAMILY  = -3000;
enum UV__EAI_AGAIN       = -3001;
enum UV__EAI_BADFLAGS    = -3002;
enum UV__EAI_CANCELED    = -3003;
enum UV__EAI_FAIL        = -3004;
enum UV__EAI_FAMILY      = -3005;
enum UV__EAI_MEMORY      = -3006;
enum UV__EAI_NODATA      = -3007;
enum UV__EAI_NONAME      = -3008;
enum UV__EAI_OVERFLOW    = -3009;
enum UV__EAI_SERVICE     = -3010;
enum UV__EAI_SOCKTYPE    = -3011;
enum UV__EAI_BADHINTS    = -3013;
enum UV__EAI_PROTOCOL    = -3014;

/* Only map to the system errno on non-Windows platforms. It's apparently
 * a fairly common practice for Windows programmers to redefine errno codes.
 */
static if (is(typeof(E2BIG))) { version (Windows) {} else {
  enum UV__E2BIG = 0 - E2BIG;
}}else {
  enum UV__E2BIG = -4093;
}

static if (is(typeof(EACCES))) { version (Windows) {} else {
  enum UV__EACCES = 0 - EACCES;
}}else {
  enum UV__EACCES = -4092;
}

static if (is(typeof(EADDRINUSE))) { version (Windows) {} else {
  enum UV__EADDRINUSE = 0 - EADDRINUSE;
}}else {
  enum UV__EADDRINUSE = -4091;
}

static if (is(typeof(EADDRNOTAVAIL))) { version (Windows) {} else {
  enum UV__EADDRNOTAVAIL = 0 - EADDRNOTAVAIL;
}}else {
  enum UV__EADDRNOTAVAIL = -4090;
}

static if (is(typeof(EAFNOSUPPORT))) { version (Windows) {} else {
  enum UV__EAFNOSUPPORT = 0 - EAFNOSUPPORT;
}}else {
  enum UV__EAFNOSUPPORT = -4089;
}

static if (is(typeof(EAGAIN))) { version (Windows) {} else {
  enum UV__EAGAIN = 0 - EAGAIN;
}}else {
  enum UV__EAGAIN = -4088;
}

static if (is(typeof(EALREADY))) { version (Windows) {} else {
  enum UV__EALREADY = 0 - EALREADY;
}}else {
  enum UV__EALREADY = -4084;
}

static if (is(typeof(EBADF))) { version (Windows) {} else {
  enum UV__EBADF = 0 - EBADF;
}}else {
  enum UV__EBADF = -4083;
}

static if (is(typeof(EBUSY))) { version (Windows) {} else {
  enum UV__EBUSY = 0 - EBUSY;
}}else {
  enum UV__EBUSY = -4082;
}

static if (is(typeof(ECANCELED))) { version (Windows) {} else {
  enum UV__ECANCELED = 0 - ECANCELED;
}}else {
  enum UV__ECANCELED = -4081;
}

static if (is(typeof(ECHARSET))) { version (Windows) {} else {
  enum UV__ECHARSET = 0 - ECHARSET;
}}else {
  enum UV__ECHARSET = -4080;
}

static if (is(typeof(ECONNABORTED))) { version (Windows) {} else {
  enum UV__ECONNABORTED = 0 - ECONNABORTED;
}}else {
  enum UV__ECONNABORTED = -4079;
}

static if (is(typeof(ECONNREFUSED))) { version (Windows) {} else {
  enum UV__ECONNREFUSED = 0 - ECONNREFUSED;
}}else {
  enum UV__ECONNREFUSED = -4078;
}

static if (is(typeof(ECONNRESET))) { version (Windows) {} else {
  enum UV__ECONNRESET = 0 - ECONNRESET;
}}else {
  enum UV__ECONNRESET = -4077;
}

static if (is(typeof(EDESTADDRREQ))) { version (Windows) {} else {
  enum UV__EDESTADDRREQ = 0 - EDESTADDRREQ;
}}else {
  enum UV__EDESTADDRREQ = -4076;
}

static if (is(typeof(EEXIST))) { version (Windows) {} else {
  enum UV__EEXIST = 0 - EEXIST;
}}else {
  enum UV__EEXIST = -4075;
}

static if (is(typeof(EFAULT))) { version (Windows) {} else {
  enum UV__EFAULT = 0 - EFAULT;
}}else {
  enum UV__EFAULT = -4074;
}

static if (is(typeof(EHOSTUNREACH))) { version (Windows) {} else {
  enum UV__EHOSTUNREACH = 0 - EHOSTUNREACH;
}}else {
  enum UV__EHOSTUNREACH = -4073;
}

static if (is(typeof(EINTR))) { version (Windows) {} else {
  enum UV__EINTR = 0 - EINTR;
}}else {
  enum UV__EINTR = -4072;
}

static if (is(typeof(EINVAL))) { version (Windows) {} else {
  enum UV__EINVAL = 0 - EINVAL;
}}else {
  enum UV__EINVAL = -4071;
}

static if (is(typeof(EIO))) { version (Windows) {} else {
  enum UV__EIO = 0 - EIO;
}}else {
  enum UV__EIO = -4070;
}

static if (is(typeof(EISCONN))) { version (Windows) {} else {
  enum UV__EISCONN = 0 - EISCONN;
}}else {
  enum UV__EISCONN = -4069;
}

static if (is(typeof(EISDIR))) { version (Windows) {} else {
  enum UV__EISDIR = 0 - EISDIR;
}}else {
  enum UV__EISDIR = -4068;
}

static if (is(typeof(ELOOP))) { version (Windows) {} else {
  enum UV__ELOOP = 0 - ELOOP;
}}else {
  enum UV__ELOOP = -4067;
}

static if (is(typeof(EMFILE))) { version (Windows) {} else {
  enum UV__EMFILE = 0 - EMFILE;
}}else {
  enum UV__EMFILE = -4066;
}

static if (is(typeof(EMSGSIZE))) { version (Windows) {} else {
  enum UV__EMSGSIZE = 0 - EMSGSIZE;
}}else {
  enum UV__EMSGSIZE = -4065;
}

static if (is(typeof(ENAMETOOLONG))) { version (Windows) {} else {
  enum UV__ENAMETOOLONG = 0 - ENAMETOOLONG;
}}else {
  enum UV__ENAMETOOLONG = -4064;
}

static if (is(typeof(ENETDOWN))) { version (Windows) {} else {
  enum UV__ENETDOWN = 0 - ENETDOWN;
}}else {
  enum UV__ENETDOWN = -4063;
}

static if (is(typeof(ENETUNREACH))) { version (Windows) {} else {
  enum UV__ENETUNREACH = 0 - ENETUNREACH;
}}else {
  enum UV__ENETUNREACH = -4062;
}

static if (is(typeof(ENFILE))) { version (Windows) {} else {
  enum UV__ENFILE = 0 - ENFILE;
}}else {
  enum UV__ENFILE = -4061;
}

static if (is(typeof(ENOBUFS))) { version (Windows) {} else {
  enum UV__ENOBUFS = 0 - ENOBUFS;
}}else {
  enum UV__ENOBUFS = -4060;
}

static if (is(typeof(ENODEV))) { version (Windows) {} else {
  enum UV__ENODEV = 0 - ENODEV;
}}else {
  enum UV__ENODEV = -4059;
}

static if (is(typeof(ENOENT))) { version (Windows) {} else {
  enum UV__ENOENT = 0 - ENOENT;
}}else {
  enum UV__ENOENT = -4058;
}

static if (is(typeof(ENOMEM))) { version (Windows) {} else {
  enum UV__ENOMEM = 0 - ENOMEM;
}}else {
  enum UV__ENOMEM = -4057;
}

static if (is(typeof(ENONET))) { version (Windows) {} else {
  enum UV__ENONET = 0 - ENONET;
}}else {
  enum UV__ENONET = -4056;
}

static if (is(typeof(ENOSPC))) { version (Windows) {} else {
  enum UV__ENOSPC = 0 - ENOSPC;
}}else {
  enum UV__ENOSPC = -4055;
}

static if (is(typeof(ENOSYS))) { version (Windows) {} else {
  enum UV__ENOSYS = 0 - ENOSYS;
}}else {
  enum UV__ENOSYS = -4054;
}

static if (is(typeof(ENOTCONN))) { version (Windows) {} else {
  enum UV__ENOTCONN = 0 - ENOTCONN;
}}else {
  enum UV__ENOTCONN = -4053;
}

static if (is(typeof(ENOTDIR))) { version (Windows) {} else {
  enum UV__ENOTDIR = 0 - ENOTDIR;
}}else {
  enum UV__ENOTDIR = -4052;
}

static if (is(typeof(ENOTEMPTY))) { version (Windows) {} else {
  enum UV__ENOTEMPTY = 0 - ENOTEMPTY;
}}else {
  enum UV__ENOTEMPTY = -4051;
}

static if (is(typeof(ENOTSOCK))) { version (Windows) {} else {
  enum UV__ENOTSOCK = 0 - ENOTSOCK;
}}else {
  enum UV__ENOTSOCK = -4050;
}

static if (is(typeof(ENOTSUP))) { version (Windows) {} else {
  enum UV__ENOTSUP = 0 - ENOTSUP;
}}else {
  enum UV__ENOTSUP = -4049;
}

static if (is(typeof(EPERM))) { version (Windows) {} else {
  enum UV__EPERM = 0 - EPERM;
}}else {
  enum UV__EPERM = -4048;
}

static if (is(typeof(EPIPE))) { version (Windows) {} else {
  enum UV__EPIPE = 0 - EPIPE;
}}else {
  enum UV__EPIPE = -4047;
}

static if (is(typeof(EPROTO))) { version (Windows) {} else {
  enum UV__EPROTO = 0 - EPROTO;
}}else {
  enum UV__EPROTO = -4046;
}

version(Windows) {
enum UV__EPROTONOSUPPORT = -4045;
} else {
enum UV__EPROTONOSUPPORT = 0 - EPROTONOSUPPORT;
}

static if (is(typeof(EPROTOTYPE))) { version (Windows) {} else {
  enum UV__EPROTOTYPE = 0 - EPROTOTYPE;
}}else {
  enum UV__EPROTOTYPE = -4044;
}

static if (is(typeof(EROFS))) { version (Windows) {} else {
  enum UV__EROFS = 0 - EROFS;
}}else {
  enum UV__EROFS = -4043;
}

static if (is(typeof(ESHUTDOWN))) { version (Windows) {} else {
  enum UV__ESHUTDOWN = 0 - ESHUTDOWN;
}}else {
  enum UV__ESHUTDOWN = -4042;
}

static if (is(typeof(ESPIPE))) { version (Windows) {} else {
  enum UV__ESPIPE = 0 - ESPIPE;
}}else {
  enum UV__ESPIPE = -4041;
}

static if (is(typeof(ESRCH))) { version (Windows) {} else {
  enum UV__ESRCH = 0 - ESRCH;
}}else {
  enum UV__ESRCH = -4040;
}

static if (is(typeof(ETIMEDOUT))) { version (Windows) {} else {
  enum UV__ETIMEDOUT = 0 - ETIMEDOUT;
}}else {
  enum UV__ETIMEDOUT = -4039;
}

static if (is(typeof(ETXTBSY))) { version (Windows) {} else {
  enum UV__ETXTBSY = 0 - ETXTBSY;
}}else {
  enum UV__ETXTBSY = -4038;
}

static if (is(typeof(EXDEV))) { version (Windows) {} else {
  enum UV__EXDEV = 0 - EXDEV;
}}else {
  enum UV__EXDEV = -4037;
}

static if (is(typeof(EFBIG))) { version (Windows) {} else {
  enum UV__EFBIG = 0 - EFBIG;
}}else {
  enum UV__EFBIG = -4036;
}

static if (is(typeof(ENOPROTOOPT))) { version (Windows) {} else {
  enum UV__ENOPROTOOPT = 0 - ENOPROTOOPT;
}}else {
  enum UV__ENOPROTOOPT = -4035;
}

static if (is(typeof(ERANGE))) { version (Windows) {} else {
  enum UV__ERANGE = 0 - ERANGE;
}}else {
  enum UV__ERANGE = -4034;
}

static if (is(typeof(ENXIO))) { version (Windows) {} else {
  enum UV__ENXIO = 0 - ENXIO;
}}else {
  enum UV__ENXIO = -4033;
}

static if (is(typeof(EMLINK))) { version (Windows) {} else {
  enum UV__EMLINK = 0 - EMLINK;
}}else {
  enum UV__EMLINK = -4032;
}

/* EHOSTDOWN is not visible on BSD-like systems when _POSIX_C_SOURCE is
 * defined. Fortunately, its value is always 64 so it's possible albeit
 * icky to hard-code it.
 */
version(Windows) {
  enum UV__EHOSTDOWN = -4031;
} else version(OSX) {
  enum UV__EHOSTDOWN = -64;
} else version(BSD) {
  enum UV__EHOSTDOWN = -64;
} else { static if (is(typeof(EHOSTDOWN) : int)) {
  enum UV__EHOSTDOWN = 0 - EHOSTDOWN;
}}

static if (is(typeof(EREMOTEIO))) { version (Windows) {} else {
  enum UV__EREMOTEIO = 0 - EREMOTEIO;
}}else {
  enum UV__EREMOTEIO = -4030;
}

static if (is(typeof(ENOTTY))) { version (Windows) {} else {
  enum UV__ENOTTY = 0 - ENOTTY;
}}else {
  enum UV__ENOTTY = -4029;
}
