## FindHARFBUZZ_SUBSET.cmake
##
## Copyright (C) 2026 Peijing Li
##
## This file is free software; the copyright holder gives
## unlimited permission to copy and/or distribute it, with or
## without modifications, as long as this notice is preserved.

## MiKTeX's bundled HarfBuzz (Libraries/3rd/harfbuzz) compiles the
## hb-subset-*.cc sources into the single miktex-harfbuzz library, so the
## hb_subset_* entry points come for free there. System HarfBuzz installs
## ship them in a *separate* library (libharfbuzz-subset), which has to be
## found and linked on its own.

find_path(HARFBUZZ_SUBSET_INCLUDE_DIR
    NAMES
        hb-subset.h
    PATH_SUFFIXES
        harfbuzz
)

find_library(HARFBUZZ_SUBSET_LIBRARY
    NAMES
        harfbuzz-subset
)

find_package_handle_standard_args(HARFBUZZ_SUBSET DEFAULT_MSG HARFBUZZ_SUBSET_LIBRARY HARFBUZZ_SUBSET_INCLUDE_DIR)

if(HARFBUZZ_SUBSET_FOUND)
    set(HARFBUZZ_SUBSET_INCLUDE_DIRS ${HARFBUZZ_SUBSET_INCLUDE_DIR})
    set(HARFBUZZ_SUBSET_LIBRARIES ${HARFBUZZ_SUBSET_LIBRARY})
else()
    set(HARFBUZZ_SUBSET_INCLUDE_DIRS)
    set(HARFBUZZ_SUBSET_LIBRARIES)
endif()

mark_as_advanced(HARFBUZZ_SUBSET_LIBRARY HARFBUZZ_SUBSET_INCLUDE_DIR)
