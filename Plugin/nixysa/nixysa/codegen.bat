@echo off
REM Copyright 2009 Google Inc.
REM
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM You may obtain a copy of the License at
REM
REM      http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.

set THIRD_PARTY=%~dp0..\third_party
set PYTHONPATH=%PYTHONPATH%;%THIRD_PARTY%\gflags-1.0\python;%THIRD_PARTY%\ply-3.1
if not "%PYTHON%"=="" goto :RUN
set PYTHON=python.exe

:RUN
REM %PYTHON% %~dp0codegen.py %*
%~dp0codegen.py %*
