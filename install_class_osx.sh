export CONDA_BUILD_SYSROOT=/

rm -rf class_public
git clone --depth=1000 https://github.com/lesgourg/class_public.git
cd class_public

sed -i.bak -e 's/ gcc/ clang/g' Makefile
sed -i.bak -e 's/fopenmp/openmp/g' Makefile

make -j4

# at this point the make file leaves you in the python dir
cd ..