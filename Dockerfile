FROM registry.codeocean.com/codeocean/miniconda3:4.7.10-python3.7-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends zlib1g-dev=1:1.2.11.dfsg-0ubuntu2
RUN apt-get install -y --no-install-recommends libbz2-dev=1.0.6-8.1ubuntu0.2 
RUN pip install --upgrade pip
RUN pip install sniffles
CMD ["/bin/bash"]
