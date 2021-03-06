#!/bin/bash

#SBATCH --nodes=1

#SBATCH --cpus-per-task=16

#SBATCH --time=3-00:00:00

#SBATCH --output=output/output_combined3/job.%J.out

#SBATCH --error=output/output_combined3/job.%J.err

#SBATCH --job-name="combined_evidence3"

#SBATCH --mail-user=petrucci@iastate.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module load cmake/3.18.1-j52h3yu
module load gcc/7.3.0-xegsmw4
module load boost/1.73.0-hm3w2fl

cd /home/petrucci/canid_tree
/home/petrucci/revbayes/projects/cmake/rb scripts/combined_evidence_fbd_clean.Rev
