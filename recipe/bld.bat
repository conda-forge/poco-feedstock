mkdir build-conda
cd build-conda

cmake ^
    -DCMAKE_BUILD_TYPE="Release" ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
    -DENABLE_DATA_MYSQL=OFF ^
    -DENABLE_DATA_ODBC=OFF ^
    -GNinja ..
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
