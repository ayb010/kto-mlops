FROM python:3.11-slim

ARG MLFLOW_S3_ENDPOINT_URL
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

ENV MLFLOW_S3_ENDPOINT_URL=${MLFLOW_S3_ENDPOINT_URL}
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

# Copie des fichiers nécessaires
COPY cats_dogs_other/train ./cats_dogs_other/train
COPY cats_dogs_other/requirements.txt ./cats_dogs_other/requirements.txt
COPY packages ./packages
COPY init_packages.sh ./init_packages.sh

# Création explicite des répertoires manquants
RUN mkdir -p cats_dogs_other/api
RUN mkdir -p cats_dogs_other/label

# Rendre les fichiers exécutables
RUN chmod -R 777 ./cats_dogs_other
RUN chmod +x ./init_packages.sh

# Exécution du script
RUN ./init_packages.sh

# Installation des dépendances python
RUN pip install -r ./cats_dogs_other/requirements.txt
