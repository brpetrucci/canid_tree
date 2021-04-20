#!/bin/bash

#SBATCH --nodes=1

#SBATCH --cpus-per-task=16

#SBATCH --time=3-00:00:00

#SBATCH --output=output/output_nuclear_avg/job.%J.out

#SBATCH --error=output/output_nuclear_avg/job.%J.err

#SBATCH --job-name="nuclear_avg" 

#SBATCH --mail-user=petrucci@iastate.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module load cmake/3.18.1-j52h3yu
module load gcc/7.3.0-xegsmw4
module load boost/1.73.0-hm3w2fl

../revbayes/projects/cmake/rb scripts/avg_nuclear_MCMC.Rev
