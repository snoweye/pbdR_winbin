@ECHO OFF

rem ### Set environment variables.
SET R_HOME=C:\Program Files\R\R-3.0.1\
SET RHOME=%R_HOME%
SET RBIN=%R_HOME%bin\
SET RTOOLS=C:\Rtools\bin\
SET MINGW=C:\Rtools\gcc-4.6.3\bin\
SET MPI_ROOT=C:\Program Files\Microsoft MPI\

SET PATH=%MPI_ROOT%Bin\;%RHOME%;%RBIN%;%RTOOLS%;%MINGW%;%PATH_ORG%
