#!/bin/sh
#SBATCH --partition=GPUQ
#SBATCH --account=share-ie-idi
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=12000
#SBATCH --job-name="trainFasterRCNN"
#SBATCH --output=resultPrint.out
#SBATCH --mail-user=bidossessi.e.agossou@ntnu.no
#SBATCH --mail-type=ALL

WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
echo "we are running from this directory: $SLURM_SUBMIT_DIR\n"
echo " the name of the job is: $SLURM_JOB_NAME\n"
echo "Th job ID is $SLURM_JOB_ID\n"
echo "The job was run on these nodes: $SLURM_JOB_NODELIST\n"
echo "Number of nodes: $SLURM_JOB_NUM_NODES\n"
echo "We are using $SLURM_CPUS_ON_NODE cores\n"
echo "We are using $SLURM_CPUS_ON_NODE cores per node\n"
echo "Total of $SLURM_NTASKS cores\n"

module purge
#module load Anaconda/2020.07
#module load Python/3.10.8-GCCcore-12.2.0 
source venv/bin/activate
python train.py

uname -a