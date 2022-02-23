setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

:: Configure using the CMakeFiles
cmake -G "NMake Makefiles" ^
@REM       -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
@REM       -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
@REM       -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_CXX_FLAGS="%CXXFLAGS% -DNETCDF -WNO-DEPRECATED" ^
      .. ^
if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
nmake install
if errorlevel 1 exit 1
