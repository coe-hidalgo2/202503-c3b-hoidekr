# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-src"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-build"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/tmp"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/src/bmpi3-populate-stamp"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/src"
  "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/src/bmpi3-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/src/bmpi3-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspaces/202503-c3b-hoidekr/_deps/bmpi3-subbuild/bmpi3-populate-prefix/src/bmpi3-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
