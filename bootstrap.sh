#! /bin/sh

# see https://community.plone.org/t/not-using-bootstrap-py-as-default/620
rm -r ./lib ./include ./bin
ln -fs base.cfg buildout.cfg
virtualenv-2.7 --clear .
./bin/pip install zc.buildout
./bin/buildout
