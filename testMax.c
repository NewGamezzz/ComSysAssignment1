#include "max.c"
#include <stdio.h>
#include <time.h>

int main(){
	int a = 1;
	int b = 0;
	int c;
	int it = 1000*1000*1000;

	// time_t begin, end;
	// time(&begin);
	clock_t begin = clock();
	for(int i=0; i<it; i++){
		c = max2(a, b);
	}
	clock_t end = clock();
	// time(&end);

	double time_spent = (double)(end-begin)/CLOCKS_PER_SEC;
	printf("Elapsed: %lf", time_spent);
	return 0;
}