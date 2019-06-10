# Print &pi; - a template for [Python](https://www.python.org/) projects using [Conda](https://docs.conda.io/en/latest/)

This repository is a template for a [Python](https://www.python.org/) project running on Windows with its environment managed by [Conda](https://docs.conda.io/en/latest/).

# print_pi.py
This script will simply print the number &pi; in the console window.  
The script depends on the [numpy](https://www.numpy.org/) module.  
Unfortunately, this script does not document which version of Python and which version of numpy to be used to run it.
Conda is an environment management system that addressed this issue (and brings plenty of other nice features!)

# print_pi.bat
**print_pi.bat** will run **print_pi.py** after setting up the environment using Conda.
It will:
1. Install [Miniconda](https://docs.conda.io/en/latest/miniconda.html) if necessary
1. Create the environment from **setup/environment.yml** if necessary
1. Run **print_pi.py**

# setup/
The **setup/** folder contains a variety of batch files used to install Miniconda and create the Python environment.

## setup_config.bat
This batch file contains configuration variables for the environment setup process:
- Environment name
- Download URLs
- Install folders
- etc ...

## environment.yml
This is the list of packages to be used for your environment. More details [here](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#create-env-from-file).