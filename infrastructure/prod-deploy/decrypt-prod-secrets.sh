#!/bin/bash

# Decrypt secret files archive that contain credentials.
#
# This includes:
#   - continuous-deployment-prod.json
#     Google Cloud Platform Service Account for using with gcloud.
#   - load-prod-deploy-envs.sh
#     Loads environment variables used when running Django.
openssl aes-256-cbc -K "${encrypted_b62ab4281615_key}" -iv "${encrypted_b62ab4281615_iv}" -in ./infrastructure/prod-deploy/prod-deploy-secrets.tar.enc -out prod-deploy-secrets.tar -d

# Unzip the decrypted secret archive into the current folder.
tar -xf prod-deploy-secrets.tar
