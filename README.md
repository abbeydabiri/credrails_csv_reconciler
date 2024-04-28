# CSV Reconciliation Challenge (Python CLI Application)

This repo contains a csv reconciliation application written in python. 
The application reconciles a source and target csv and generates an html report

The generated html report is then saved to the file system and openned in a web-browser.



## System Requirements

System Requirements: [Git](http://www.git-scm.com), [Python 3.12.0](https://www.python.org/downloads/)

```bash
# Check dependencies
$ git --version
git version 2.39.3

$ python3 --version
Python 3.12.2

$ pip --version # pip comes as a part of python install
pip 24.0
```

## To install tool
```bash
# Clone the sourcecode
$ git clone <repo url>
$ cd <project dir>

# Setup python virtual environment
$ python3 -m venv venv
$ source venv/bin/activate

# Install project dependencies
$ ./install.sh
```

## To run tool
```bash
# For help
$ csv_reconciler -h

# Run the application with
$ csv_reconciler 

# to ignore specific columns use the flag -i e.g
$ csv_reconciler -i amount id

# or specify the sample files via the command line
$ csv_reconciler -s sample_source.csv -t sample_target.csv
```

## To modify code or run unit tests
```bash
# Install requirements
$ pip3 install -r requirements.txt                                                                   

#Run unit tests
$ python3 -m unittest

```