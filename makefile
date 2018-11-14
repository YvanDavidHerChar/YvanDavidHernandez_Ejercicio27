N := 2000
mu := 5
sigma := 0.3


test1: listing12-2.c
	mpicc listing12-2.c -o test1
	mpirun -np 4 ./test1

test2: listing12-3.c
	mpicc listing12-3.c -o test2
	mpirun -np 4 ./test2	


clean:
	rm -f test1
	rm -f test2
	rm -f *.dat
	rm -f sample
