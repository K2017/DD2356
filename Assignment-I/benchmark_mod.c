#define N 5000
#define REPEAT 100
#include <stdio.h>
#include <sys/time.h>

double mysecond();

int main(){
  int i, j;
  double t1, t2; // timers                                                         
  double a[N], b[N], c[N]; // arrays  
                                             
  // init arrays                                                                   
  for (i = 0; i < N; i++){
    a[i] = 47.0;
    b[i] = 3.1415;
  }

  // cold start
  for(i = 0; i < N; i++)
    c[i] = a[i]*b[i];

  double total = 0;
  double min = 1;
  for (j = 0; j < REPEAT; ++j) {
	  // measure performance                                                           
	  t1 = mysecond();
	  for(i = 0; i < N; i++)
	    c[i] = a[i]*b[i];
	  t2 = mysecond();
	  double elapsed = t2 - t1;
	  if (elapsed < min) min = elapsed;
	  total += elapsed;
  }

  for (i = 0; i < N; ++i) {
    if (c[i] != 47.0 * 3.1415) {
	printf("Failed integrity check!");
    }
  }

  printf("Execution time: %11.8f s\n", total/(double)REPEAT);
  printf("Min time: %11.8f s\n", min);
  return 0;
}

// function with timer                                                             
double mysecond(){
  struct timeval tp;
  struct timezone tzp;
  int i;

  i = gettimeofday(&tp,&tzp);
  return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}
