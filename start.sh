#!/bin/bash
mlflow server --backend-store-uri $MLFLOW_BACKEND_STORE --default-artifact-root $MLFLOW_S3_ENDPOINT_URL --host 0.0.0.0
