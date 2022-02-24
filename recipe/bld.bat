setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
move CMakeLists.txt %SRC_DIR%

:: Configure using the CMakeFiles
cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_CXX_FLAGS="%CXXFLAGS% -Dnetcdf" ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
nmake install
if errorlevel 1 exit 1

@REM :: Move executable to binary folder - If needed
@REM copy Raven.exe %LIBRARY_BIN%
@REM if errorlevel 1 exit 1
