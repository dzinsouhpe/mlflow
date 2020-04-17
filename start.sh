#!/bin/bash
mlflow server --backend-store-uri $MLFLOW_BACKEND_STORE --host 0.0.0.0
