FROM continuumio/miniconda3:4.10.3p1

RUN conda install mamba -n base -c conda-forge
COPY environment.yml /
RUN mamba env create -f /environment.yml

ENV PATH /opt/conda/envs/anacapa-crux/bin:$PATH

