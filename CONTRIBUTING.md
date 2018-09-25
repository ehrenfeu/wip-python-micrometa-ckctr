Contributing
============

Contributions are welcome, and they are greatly appreciated! Every
little bit helps, and credit will always be given.

Bug reports
-----------

When [reporting a bug](https://github.com/ehrenfeu/python-mirometa-ckctr/issues)
please include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in
  troubleshooting.
* Detailed steps to reproduce the bug.

Documentation improvements
--------------------------

mirometa-ckctr could always use more documentation, whether as part of the
official mirometa-ckctr docs, in docstrings, or even on the web in blog posts,
articles, and such.

Feature requests and feedback
-----------------------------

The best way to send feedback is to file an issue at
https://github.com/ehrenfeu/python-mirometa-ckctr/issues.

If you are proposing a feature:

* Explain in detail how it would work.
* Keep the scope as narrow as possible, to make it easier to implement.
* Remember that this is a volunteer-driven project, and that code contributions
  are welcome :)

Development
-----------

To set up `python-mirometa-ckctr` for local development:

1. Fork [python-mirometa-ckctr](https://github.com/ehrenfeu/python-mirometa-ckctr)
   (look for the "Fork" button).

1. Clone your fork locally:

   ```
   git clone git@github.com:your_name_here/python-mirometa-ckctr.git
   ```

1. Create a branch for local development::

   ```
    git checkout -b name-of-your-bugfix-or-feature
   ```

   Now you can make your changes locally.

1. When you're done making changes, run all the checks, doc builder and spell
   checker with [tox](http://tox.readthedocs.io/en/latest/install.html) one
   command:

   ```
    tox
   ```

1. Commit your changes and push your branch to GitHub:

   ```
    git add .
    git commit -m "Your detailed description of your changes"
    git push origin name-of-your-bugfix-or-feature
   ```

1. Submit a pull request through the GitHub website.

### Pull Request Guidelines

If you need some code review or feedback while you're developing the code just
make the pull request.

For merging, you should:

1. Include passing tests (run `tox`).

   If you don't have all the necessary python versions available locally you can
   rely on Travis - it will [run the
   tests](https://travis-ci.org/ehrenfeu/python-mirometa-ckctr/pull_requests)
   for each change you add in the pull request. It will be slower though...

1. Update documentation when there's new API, functionality etc.
1. Add a note to `CHANGELOG.md` about the changes.
1. Add yourself to `AUTHORS.md`.

### Tips

To run a subset of tests::

    tox -e envname -- pytest -k test_myfeature

To run all test environments in *parallel* (you need to `pip install detox`):

    detox
