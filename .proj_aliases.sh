#!/bin/bash

module unload python
module load R/4.0.1 conda2

# Bash aliases used in this project.
alias pocaf_srun="srun --pty -p priority --mem 32G -c 3 -t 0-08:00 /bin/bash"
alias pocaf_env="conda activate pocaf && bash .proj_aliases.sh"
alias pocaf_jl="jupyter lab --port=7016 --browser='none'"
alias pocaf_sshlab='ssh -N -L 7016:127.0.0.1:7016'

