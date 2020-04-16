
FROM bluedata/centos7:latest
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y epel-release
RUN yum install -y htop vim wget net-tools git unzip zip python3 libgfortran libgomp
RUN yum group install "Development Tools"

RUN pip3 install mlflow
RUN useradd mlflow
RUN mkdir /opt/mlflow
RUN mkdir /opt/mlflow/backend-store
RUN mkdir /opt/mlflow/log
RUN chown -R mlflow:mlflow /opt/mlflow

WORKDIR /opt/mlflow/
USER mlflow

EXPOSE 5000

ENTRYPOINT ["mlflow", "server", "--backend-store-uri", "/opt/mlflow/backend-store", "--host", "0.0.0.0"]
