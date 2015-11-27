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
