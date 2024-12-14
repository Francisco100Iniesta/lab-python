#!/bin/bash

#SBATCH --job-name=ejecucion_python
#SBATCH -o phyton_%j_%u.txt
#SBATCH --partition=hpc-bio-pascal
#SBATCH --chdir=/home/alumno11/lab4
#SBATCH --cpus-per-task=4

module load anaconda/2023.03

echo "El numero de value seleccionado es:$1"
srun ipython reduc-operation-alumno11.ipynb $1
