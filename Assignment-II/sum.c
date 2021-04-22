#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <omp.h>

int MAX_THREADS = 1;

void generate_random(double *input, size_t size)
{
	for (size_t i = 0; i < size; i++) {
		input[i] = rand() / (double)(RAND_MAX);
	}
}

double serial_sum(double *x, size_t size)
{
	double sum_val = 0.0;

	for (size_t i = 0; i < size; i++) {
		sum_val += x[i];
	}

	return sum_val;
}

double omp_sum(double *x, size_t size)
{
	double sum_val = 0.0;

	#pragma omp parallel for
	for (size_t i = 0; i < size; i++) {
		sum_val += x[i];
	}

	return sum_val;
}

double omp_critical_sum(double *x, size_t size)
{
	double sum_val = 0.0;

	#pragma omp parallel for
	for (size_t i = 0; i < size; i++) {
		
		#pragma omp critical
		{
		sum_val += x[i];
		}
	}

	return sum_val;
}

double omp_local_sum(double *x, size_t size)
{
	double sum_val = 0.0;
	double local_sum;
	#pragma omp parallel shared(sum_val) private(local_sum) 
	{
		local_sum = 0.0;
		#pragma omp for
		for (size_t i = 0; i < size; i++) {
			
			local_sum += x[i];
		}
		#pragma omp atomic
		sum_val += local_sum;
	}
	
	return sum_val;
}

typedef struct {
	double val;
	char pad[128];
} svals;

double opt_local_sum(double *x, size_t size)
{
	svals suminfo[MAX_THREADS];
	#pragma omp parallel shared(suminfo)
	{
		int id = omp_get_thread_num();
		suminfo[id].val = 0.0;
		#pragma omp for
		for (size_t i = 0; i < size; i++) {
			
			suminfo[id].val += x[i];
		}
	}

	double sum_val = 0.0;
	for (int i = 0; i < MAX_THREADS; ++i) {
		sum_val += suminfo[i].val;
	}
	
	return sum_val;
}

int main(int argc, char** argv) {
	size_t size = 1000000;
	size_t n = 20;
	double *x = malloc(size * sizeof(double));
	double *runs = malloc(n * sizeof(double));
	double *sums = malloc(n * sizeof(double));

	int threads[] = {1,2,4,8,16,20,24,28,32};
	generate_random(x, size);
	
	for (int t = 0; t < 9; ++t) {
		omp_set_num_threads(threads[t]);
		MAX_THREADS = threads[t];

		double elapsed = 0.0;
		for (int i = 0; i < n; ++i) {
			double t1 = omp_get_wtime();
			sums[i] = opt_local_sum(x, size);
			double t2 = omp_get_wtime();

			//printf("sum: %lf\n", sums[i]);

			runs[i] = t2 - t1;
			elapsed += runs[i];
		}
		double avg = elapsed / n;

		double ss = 0.0;
		for (int i = 0; i < n; ++i) {
			double diff = runs[i] - avg;
			ss += diff * diff;
		}
		double dev = sqrt(ss / n);
		
		printf("Number of threads: %d\n", threads[t]);
		printf("Total time: %g\n", elapsed);
		printf("Average time: %g\n", avg);
		printf("Standard Deviation: %g\n", dev);

		// use sums to avoid compiler optimisations
		double total = 0.0;
		for (int i = 0; i < n; ++i) {
			total += sums[i];
		}
	}

	free(sums);
	free(runs);
	free(x);
	return 0;
}
