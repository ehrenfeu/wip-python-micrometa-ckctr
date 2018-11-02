MicroMeta
=========

[//]: # (start-badges)

[![Documentation Status](https://readthedocs.org/projects/python-mirometa-ckctr/badge/?style=flat)](https://readthedocs.org/projects/python-mirometa-ckctr)

[//]: # (end-badges)

Python package to process metadata from various light-microscopy related data formats.
Supports generating [ImageJ][1] macros for stitching mosaics / tilings.

The code is pure Python and known to work with CPython and Jython, so the
package can also be imported in [ImageJ Jython scripts][2].


* Free software: GPLv3 License

Installation
------------

    pip install micrometa

Documentation
-------------

https://python-micrometa-ckctr.readthedocs.io/

Development
-----------

To run the all tests run:

    tox

Note, to combine the coverage data from all the tox environments run:

| OS      | Command                                  |
|---------|------------------------------------------|
| Windows | `set PYTEST_ADDOPTS=--cov-append && tox` |
| Other   | `PYTEST_ADDOPTS=--cov-append tox`        |


[1]: https://imagej.net/
[2]: https://imagej.net/Jython_Scripting
