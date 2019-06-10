@echo off
REM - This script creates a new environment based on an environment.yml located in this file directory

REM - Read setup configuration
call %~dp0\setup_config.bat

IF NOT EXIST %LOCAL_ENVIRONMENT_FOLDER% (
	@echo on
	echo Please wait while the environment %LOCAL_ENVIRONMENT_FOLDER% is created ...
	call %MINICONDA_INSTALL_FOLDER%\Scripts\activate.bat %MINICONDA_INSTALL_FOLDER% && conda env create -f %~dp0\environment.yml
	call copy NUL %~dp0\ENV_OK
)
