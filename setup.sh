#!/bin/bash

source .proj_aliases.sh

# Create virtual environment.
conda create --name pocaf python=3.6 setuptools==41.0.0 absl-py==0.8.1 numpy==1.16 six==1.12 dm-sonnet==1.35 tensorflow==1.14 tensorflow-probability
conda activate pocaf

# Install pre-commit.
conda install pre-commit

# Install jupyter lab and formatter extension.
conda install jupyterlab nodejs jupyterlab_code_formatter black isort
jupyter labextension install @ryantam626/jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_code_formatter

# Install HHH-suite3
conda install -c conda-forge -c bioconda hhsuite
