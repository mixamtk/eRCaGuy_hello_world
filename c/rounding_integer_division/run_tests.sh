#!/bin/bash

THIS_PATH="$(realpath $0)"
# echo "THIS_PATH = \"$THIS_PATH\"" # for debugging
THIS_DIR="$(dirname "$THIS_PATH")"
# echo "THIS_DIR = \"$THIS_DIR\"" # for debugging 

# Ensure bin dir exists for executable outputs to be placed
mkdir -p "$THIS_DIR/bin"

echo "=========================="
echo "1/2: C tests"
echo 'gcc -Wall -Werror -g3 -std=c11 -o "$THIS_DIR/bin/rounding_integer_division_c" "$THIS_DIR/rounding_integer_division.c" && "$THIS_DIR/bin/rounding_integer_division_c"'
echo "=========================="
echo ""
gcc -Wall -Werror -g3 -std=c11 -o "$THIS_DIR/bin/rounding_integer_division_c" "$THIS_DIR/rounding_integer_division.c" && "$THIS_DIR/bin/rounding_integer_division_c"

echo ""
echo "=========================="
echo "2/2: C++ tests"
echo 'g++ -Wall -Werror -g3 -std=c++17 -o "$THIS_DIR/bin/rounding_integer_division_cpp" "$THIS_DIR/rounding_integer_division.cpp" && "$THIS_DIR/bin/rounding_integer_division_cpp"'
echo "=========================="
echo ""
g++ -Wall -Werror -g3 -std=c++17 -o "$THIS_DIR/bin/rounding_integer_division_cpp" "$THIS_DIR/rounding_integer_division.cpp" && "$THIS_DIR/bin/rounding_integer_division_cpp"

