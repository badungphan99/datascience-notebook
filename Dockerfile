FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
    # apt-get install -y software-properties-common && \
    # add-apt-repository ppa:octave/stable -y && \
    # apt-get update && \
    apt-get install -y --no-install-recommends octave \
    octave-symbolic \
    octave-miscellaneous \
    gnuplot \
    ghostscript && \
    conda install -c conda-forge octave_kernel && \
    rm -rf /var/lib/apt/lists/*