# Name: korniichuk/jupyter-notebook
# Short Description: Jupyter Notebook
# Full Description: The base image for korniichuk/jupyter-k3d-notebook Docker
# image.
# Version: 0.1a1

FROM jupyter/minimal-notebook:latest

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

# Now switch to jovyan for all conda installs
USER jovyan
