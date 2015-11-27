# Name: korniichuk/jupyter-notebook
# Short Description: Jupyter Notebook
# Full Description: The base image for korniichuk/jupyter-k3d-notebook Docker
# image.
# Version: 0.1a1

FROM jupyter/minimal-notebook:latest

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

# Now switch to jovyan for all conda installs
USER jovyan

# Install ipywidgets, matplotlib, NumPy, SciPy for Python 3
RUN conda install --yes \
    ipywidgets matplotlib numpy scipy \
    && conda clean -yt

# Install ipywidgets, matplotlib, NumPy, SciPy for Python 2
RUN conda create -p $CONDA_DIR/envs/python2 \
    python=2.7 ipywidgets matplotlib numpy scipy \
    && conda clean -yt

USER root

# Retrieve new lists of packages
ENV REFRESHED_AT 2015–11–27
RUN apt-get -qq update # -qq -- no output except for errors

# Install nodejs, nodejs-legacy
RUN apt-get install -y nodejs nodejs-legacy

# Install npm for bower installation
RUN apt-get install -y npm
