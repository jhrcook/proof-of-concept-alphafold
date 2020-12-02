# Proof-of-Concept for using DeepMind's AlphaFold model

Feature generation using the scripts from [Urinx/alphafold_pytorch](https://github.com/Urinx/alphafold_pytorch).
Predictions using the original [AlphaFold](https://github.com/deepmind/deepmind-research/blob/master/alphafold_casp13/requirements.txt) model.

## Set-up

### Feature creation

#### Conda virtual environment

I followed the instructions in [Urinx/alphafold_pytorch](https://github.com/Urinx/alphafold_pytorch) for setting up the feature creation workflow.
To create the `conda` virtual environment and install most of the required packages, run the `setup.sh` script.
The `plmDCA` tools needs to be setup manually following the instructions in [Urinx/alphafold_pytorch](https://github.com/Urinx/alphafold_pytorch).

#### plmDCA

Below is a basic list of instructions for installing and preparing `plmDCA`.
It is a mixture of shell (command line) and MATLAB instructions.
It will likely need to be modified for your purposes; for instance, I downloaded the tool's directory to a different directory to keep it as a module separate from this project.

```bash
# (command line)
git clone https://github.com/magnusekeberg/plmDCA.git
cp plmDCA.m plmDCA/plmDCA_asymmetric_v2/
cd plmDCA/plmDCA_asymmetric_v2/functions/
```

```matlab
# (MATLAB)
mex calc_inverse_weights.c
mex g_rC.c
```

```bash
# (command line)
cd ../3rd_party_code/minFunc/
```

```matlab
# (matlab)
mex lbfgsAddC.c
mex lbfgsC.c
mex lbfgsProdC.c
mex mcholC.c
```

---

[![python](https://img.shields.io/badge/Python-3.6-3776AB.svg?style=flat&logo=python&logoColor=FFDB4D)](https://www.python.org)
[![jupyter](https://img.shields.io/badge/Jupyter-Lab-F37626.svg?style=flat&logo=Jupyter)](https://jupyterlab.readthedocs.io/en/stable)
[![tensorflow](https://img.shields.io/badge/TensorFlow-1.14-FF6F00.svg?style=flat&logo=tensorflow)](https://www.tensorflow.org)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
