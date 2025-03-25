# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspaces/202503-c3b-hoidekr/_deps/ut-src"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-build"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/tmp"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/src/ut-populate-stamp"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/src"
  "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/src/ut-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/src/ut-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspaces/202503-c3b-hoidekr/_deps/ut-subbuild/ut-populate-prefix/src/ut-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
