#include <stdio.h>
#include <time.h>

long fibo(long a) {
	if (a<=0L) {
		return 0L;
	}
	if (a==1L) {
		return 1L;
	}
	return fibo(a-1L)+fibo(a-2L);
}
int main (int argc,char *argv[]) {
	clock_t begin = clock();
	for (long i=1L;i<45L;i++) {
		long f=fibo(i);
		printf("fibo of %ld is %ld\n",i,f);
	}
	clock_t end = clock();

	double time_spent = (double)(end-begin)/CLOCKS_PER_SEC;
	printf("Elapsed: %lf", time_spent);
}