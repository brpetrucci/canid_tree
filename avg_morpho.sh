#!/bin/bash

#SBATCH --nodes=1

#SBATCH --cpus-per-task=16

#SBATCH --time=2-01:00:00

#SBATCH --output=output_morpho_avg/job.%J.out

#SBATCH --error=output_morpho_avg/job.%J.err

#SBATCH --job-name="morpho_avg" 

#SBATCH --mail-user=petrucci@iastate.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module load cmake/3.18.1-j52h3yu
module load gcc/7.3.0-xegsmw4
module load boost/1.73.0-hm3w2fl

cd /home/petrucci/revbayes/
git pull
cd projects/cmake/
./build.sh

cd /home/petrucci/canid_tree
../revbayes/projects/cmake/rb scripts/avg_morpho_MCMC.Rev
