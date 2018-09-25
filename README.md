Overview
========

[//]: # (start-badges)

[![Documentation Status](https://readthedocs.org/projects/python-mirometa-ckctr/badge/?style=flat)](https://readthedocs.org/projects/python-mirometa-ckctr)

[//]: # (end-badges)

Library for parsing metadata from various light-microscopy related data formats

* Free software: GPLv3 License

Installation
============

    pip install micrometa

Documentation
=============

https://python-mirometa-ckctr.readthedocs.io/

Development
===========

To run the all tests run::

    tox

Note, to combine the coverage data from all the tox environments run:

| OS      | Command                                  |
|---------|------------------------------------------|
| Windows | `set PYTEST_ADDOPTS=--cov-append && tox` |
| Other   | `PYTEST_ADDOPTS=--cov-append tox`        |
