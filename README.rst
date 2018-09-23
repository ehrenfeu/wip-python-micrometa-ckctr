========
Overview
========

.. start-badges

.. list-table::
    :stub-columns: 1

    * - docs
      - |docs|
    * - tests
      - |
        |
    * - package
      - | |version| |wheel| |supported-versions| |supported-implementations|
        | |commits-since|

.. |docs| image:: https://readthedocs.org/projects/python-mirometa-ckctr/badge/?style=flat
    :target: https://readthedocs.org/projects/python-mirometa-ckctr
    :alt: Documentation Status

.. |version| image:: https://img.shields.io/pypi/v/micrometa.svg
    :alt: PyPI Package latest release
    :target: https://pypi.python.org/pypi/micrometa

.. |commits-since| image:: https://img.shields.io/github/commits-since/ehrenfeu/python-mirometa-ckctr/v0.8.0.svg
    :alt: Commits since latest release
    :target: https://github.com/ehrenfeu/python-mirometa-ckctr/compare/v0.8.0...master

.. |wheel| image:: https://img.shields.io/pypi/wheel/micrometa.svg
    :alt: PyPI Wheel
    :target: https://pypi.python.org/pypi/micrometa

.. |supported-versions| image:: https://img.shields.io/pypi/pyversions/micrometa.svg
    :alt: Supported versions
    :target: https://pypi.python.org/pypi/micrometa

.. |supported-implementations| image:: https://img.shields.io/pypi/implementation/micrometa.svg
    :alt: Supported implementations
    :target: https://pypi.python.org/pypi/micrometa


.. end-badges

Library for parsing metadata from various light-microscopy related data formats

* Free software: BSD 2-Clause License

Installation
============

::

    pip install micrometa

Documentation
=============

https://python-mirometa-ckctr.readthedocs.io/

Development
===========

To run the all tests run::

    tox

Note, to combine the coverage data from all the tox environments run:

.. list-table::
    :widths: 10 90
    :stub-columns: 1

    - - Windows
      - ::

            set PYTEST_ADDOPTS=--cov-append
            tox

    - - Other
      - ::

            PYTEST_ADDOPTS=--cov-append tox
