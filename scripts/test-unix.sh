cmake -DENABLE_COVERAGE=ON --preset test-unix && cmake --build buildtest -- -j28
cd buildtest
cd test
./test
make coverage