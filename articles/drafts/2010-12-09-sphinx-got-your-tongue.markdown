brew install sphinx
==> Downloading http://www.sphinxsearch.com/downloads/sphinx-0.9.9.tar.gz
######################################################################## 100.0%
==> ./configure --prefix=/usr/local/Cellar/sphinx/0.9.9 --disable-debug --disable-dependency-tracking --without-mysql
==> make install
==> Caveats
Sphinx depends on either MySQL or PostreSQL as a datasource.

You can install these with Homebrew with:
  brew install mysql
    For MySQL server.

  brew install mysql-connector-c
    For MySQL client libraries only.

  brew install postgresql
    For PostgreSQL server.

We don't install these for you when you install this formula, as
we don't know which datasource you intend to use.
==> Summary
/usr/local/Cellar/sphinx/0.9.9: 9 files, 9.0M, built in 110 seconds

