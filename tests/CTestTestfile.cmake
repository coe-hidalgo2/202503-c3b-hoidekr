# CMake generated Testfile for 
# Source directory: /workspaces/202503-c3b-hoidekr/tests
# Build directory: /workspaces/202503-c3b-hoidekr/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_mpi3-seq "/workspaces/202503-c3b-hoidekr/tests/test_mpi3")
set_tests_properties(test_mpi3-seq PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/202503-c3b-hoidekr/tests/CMakeLists.txt;7;add_test;/workspaces/202503-c3b-hoidekr/tests/CMakeLists.txt;0;")
add_test(test_mpi3-mpi "mpirun" "--oversubscribe" "-np" "4" "test_mpi3")
set_tests_properties(test_mpi3-mpi PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/202503-c3b-hoidekr/tests/CMakeLists.txt;8;add_test;/workspaces/202503-c3b-hoidekr/tests/CMakeLists.txt;0;")
