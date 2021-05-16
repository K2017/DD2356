
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <mpi.h>

#define SEED     921
#define NUM_ITER 1000000000

int main(int argc, char* argv[])
{
	int count = 0, provided;
	double x, y, z, pi;

	MPI_Init_thread(&argc, &argv, MPI_THREAD_SINGLE, &provided);

	int size;
	MPI_Comm_size(MPI_COMM_WORLD, &size);	

	int rank;
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);	

	srand(SEED * rank); // Important: Multiply SEED by "rank" when you introduce MPI!

	// Calculate PI following a Monte Carlo method
	for (int iter = 0; iter < NUM_ITER / size; iter++)
	{
		// Generate random (X,Y) points
		x = (double)random() / (double)RAND_MAX;
		y = (double)random() / (double)RAND_MAX;
		z = sqrt((x*x) + (y*y));

		// Check if point is in unit circle
		if (z <= 1.0)
		{
			count++;
		}
	}

	int levels = (int)log(size)/log(2) + 1;

	double start, end, elapsed;
	start = MPI_Wtime();

	for (int i = 0; i < levels; ++i) {
		int level = 1 << i;
		int filter = 1 << (i+1);

		if (rank % filter == 0) {
			int cnt;
			MPI_Recv(&cnt, 1, MPI_INT, rank + level, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			count += cnt;

		} else {
			MPI_Send(&count, 1, MPI_INT, rank - level, 0, MPI_COMM_WORLD);
			break;
		}
	}

	end = MPI_Wtime();
	elapsed = end - start;
	
	if (rank == 0) {
		// Estimate Pi and display the result
		pi = ((double)count / (double)NUM_ITER) * 4.0;

		//printf("The result is %f\n", pi);
		printf("%d\t%15.9f\n", size, elapsed);
	}


	MPI_Finalize();

	return 0;
}

