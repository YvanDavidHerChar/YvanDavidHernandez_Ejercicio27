#PBS -l nodes=4:ppn=1,mem=1gb,walltime=00:02:00
#PBS -M yd.hernandez10@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio27


module load anaconda/python3
module load mpich/3.2.1
cd $PBS_O_WORKDIR # este es el directorio desde donde se ejecuto qsub
make clean
make test1
make test2

mpicc sample.c -lm -o sample
mpiexec -np 4 ./sample 2000 3 0.5
