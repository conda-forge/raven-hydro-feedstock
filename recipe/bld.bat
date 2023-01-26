setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

:: Copy CMakeLists.txt to source directory
@REM copy "%RECIPE_DIR%\CMakeLists.txt" %SRC_DIR%
@REM if errorlevel 1 exit 1

:: Configure using the CMakeFiles
cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_BIN%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_CXX_FLAGS="%CXXFLAGS% -Dnetcdf" ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
@REM nmake install

:: Move executable to binary folder
copy Raven.exe %LIBRARY_BIN%
if errorlevel 1 exit 1
