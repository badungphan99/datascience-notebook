FROM jupyter/datascience-notebook

LABEL maintainer="DungPB <me@dungpb.com>"

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends octave \
    octave-symbolic \
    octave-miscellaneous \
    gnuplot \
    ghostscript && \
    rm -rf /var/lib/apt/lists/*
USER $NB_UID
RUN conda install -c conda-forge octave_kernel
WORKDIR $HOME