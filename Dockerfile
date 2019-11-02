FROM continuumio/miniconda3:latest

COPY LICENSE README.md /
COPY xonshrc /etc/xonshrc

RUN conda install -c conda-forge xonsh cf-scripts

COPY action.xsh /action.xsh

ENTRYPOINT ["/entrypoint.xsh"]
