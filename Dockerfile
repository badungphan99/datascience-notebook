FROM jupyter/datascience-notebook

LABEL maintainer="DungPB <me@dungpb.com>"

RUN conda install -c conda-forge opencv cython jupyter_contrib_nbextensions
