#!/bin/bash
export LC_ALL="en_US.UTF-8"
mlflow server --backend-store-uri $MLFLOW_BACKEND_STORE --default-artifact-root $MLFLOW_ARTIFACT_ROOT --host 0.0.0.0
