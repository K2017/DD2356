
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
	
	MPI_Request handles[size - 1];
	int counts[size - 1];

	if (rank == 0) {
		for (int i = 1; i < size; ++i) {
			MPI_Irecv(&(counts[i - 1]), 1, MPI_INT, i, 0, MPI_COMM_WORLD, &(handles[i - 1]));
		}
	}
    
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

	double start, end, elapsed;
	start = MPI_Wtime();

	if (rank == 0) {
		MPI_Waitall(size - 1, handles, MPI_STATUSES_IGNORE);
		for (int i = 1; i < size; ++i) {
			count += counts[i - 1];
		}
		// Estimate Pi and display the result
		pi = ((double)count / (double)NUM_ITER) * 4.0;
		
		//printf("The result is %f\n", pi);
	} else {
		MPI_Send(&count, 1, MPI_INT, 0, 0, MPI_COMM_WORLD);
	}
	end = MPI_Wtime();
	elapsed = end - start;
	if (rank == 0) printf("%d\t%15.9f\n", size, elapsed);	
    
	MPI_Finalize();
    
    return 0;
}

