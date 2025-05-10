#!/bin/bash

set -e  # Stop script if any command fails

cd packages
python setup.py sdist bdist_wheel
cp dist/*.whl ../cats_dogs_other/api/
cp dist/*.whl ../cats_dogs_other/label/
