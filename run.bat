@echo off

REM - Get command line parameters as options.
SET "options=%*"

REM - Read setup configuration
call %~dp0\setup\setup_config.bat

@echo off
REM - Install miniconda if necessary.
call %MINICONDA_INSTALL_SCRIPT%

@echo off
REM - Create environment.
call %~dp0\setup\conda_env_create.bat

@echo off
REM - Update environment if necessary
IF NOT EXIST %~dp0\setup\ENV_OK (	
	
	call %~dp0\setup\conda_env_remove.bat
	call %~dp0\setup\conda_env_create.bat
	
)

@echo off
REM - Start main program.
call %MINICONDA_INSTALL_FOLDER%\Scripts\activate.bat %LOCAL_ENVIRONMENT_FOLDER% && python %~dp0\print_pi.py