FROM python:3.11-slim

COPY cats_dogs_other/train ./cats_dogs_other/train
COPY cats_dogs_other/requirements.txt ./cats_dogs_other/requirements.txt
COPY packages ./packages

# Crée explicitement les répertoires nécessaires
RUN mkdir -p cats_dogs_other/api
RUN mkdir -p cats_dogs_other/label

# Installe les packages et dépendances
RUN pip install --upgrade pip
RUN pip install -r ./cats_dogs_other/requirements.txt

# Installe ton package personnalisé depuis packages/inference
RUN pip install ./packages/inference
