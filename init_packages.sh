#!/bin/bash

cd packages/inference
pip install --upgrade pip
pip install build
pip install .
python setup.py sdist bdist_wheel

cd ../../
cp packages/inference/dist/*.whl cats_dogs_other/api/
cp packages/inference/dist/*.whl cats_dogs_other/label/
