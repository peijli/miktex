#pragma once

#cmakedefine SIZEOF_LONG ${SIZEOF_LONG}
#define PACKAGE pixman-1
#if defined(_MSC_VER)
#define TLS __declspec(thread)
#else
#define TLS __thread
#endif
#cmakedefine USE_SSE2 1
#cmakedefine USE_SSSE3 1
