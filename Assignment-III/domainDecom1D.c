
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[]){

	int rank, size, i, provided;

	// number of cells (global)
	int nxc = 128; // make sure nxc is divisible by size
	double L = 2*3.1415; // Length of the domain


	MPI_Init_thread(&argc, &argv, MPI_THREAD_SINGLE, &provided);

	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);

	// number of nodes (local to the process): 0 and nxn_loc-1 are ghost cells 
	int nxn_loc = nxc/size + 3; // number of nodes is number cells + 1; we add also 2 ghost cells
	double L_loc = L/((double) size);
	double dx = L / ((double) nxc);

	// define out function
	double *f = calloc(nxn_loc, sizeof(double)); // allocate and fill with z
	double *dfdx = calloc(nxn_loc, sizeof(double)); // allocate and fill with z

	for (i=1; i<(nxn_loc-1); i++)
		f[i] = sin(L_loc*rank + (i-1) * dx);

	// need to communicate and fill ghost cells f[0] and f[nxn_loc-1]
	// communicate ghost cells
	int next, prev;
	double left, right;
	double sleft = f[2];
    double sright = f[nxn_loc - 3];

	if (rank == 0) {
		next = 1;
		prev = size - 1;
	} else if (rank == size - 1) { 
		next = 0;
		prev = rank - 1;
	} else {
		next = rank + 1;
		prev = rank - 1;
	}

	if (rank % 2 == 0) {
		MPI_Send(&sright, 1, MPI_DOUBLE, next, 0, MPI_COMM_WORLD);
		MPI_Recv(&left, 1, MPI_DOUBLE, prev, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		f[0] = left;

		MPI_Send(&sleft, 1, MPI_DOUBLE, prev, 0, MPI_COMM_WORLD);
		MPI_Recv(&right, 1, MPI_DOUBLE, next, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		f[nxn_loc - 1] = right;
	} else {
		MPI_Recv(&left, 1, MPI_DOUBLE, prev, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		f[0] = left;
		MPI_Send(&sright, 1, MPI_DOUBLE, next, 0, MPI_COMM_WORLD);

		MPI_Recv(&right, 1, MPI_DOUBLE, next, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		f[nxn_loc - 1] = right;
		MPI_Send(&sleft, 1, MPI_DOUBLE, prev, 0, MPI_COMM_WORLD);
	}


	// here we finish the calculations

	// calculate first order derivative using central difference
	// here we need to correct value of the ghost cells!
	for (i=1; i<(nxn_loc-1); i++)
		dfdx[i] = (f[i+1] - f[i-1])/(2*dx);

	// Print f values
	if (rank==0){ // print only rank 0 for convenience
		printf("My rank %d of %d\n", rank, size );
		printf("Here are my values for f including ghost cells\n");
		for (i=0; i<nxn_loc; i++) {
			printf("%f\n", f[i]);
		}
		// check for correctness
		for (i = 1; i < (nxn_loc-1); ++i) {
			if (fabs(dfdx[i] - cos(L_loc*rank + (i-1) * dx)) > 0.1) {
				printf("Failed correctness check, derivative too inaccurate\n");
				break;
			}
			printf("dfdx: %f, cosx: %f\n", dfdx[i], cos(asin(f[i])));
		}
		printf("\n");
	}   

	MPI_Finalize();
}






