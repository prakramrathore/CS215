#include <bits/stdc++.h>
using namespace std;

void fib(int n, unsigned long long x, unsigned long long y){
	if(n == 0){
		return;
	}
	cout << x << " ";
	fib(n-1, y, x+y); 
}
long current_time(){
	struct timespec ts;
	timespec_get(&ts, CLOCK_MONOTONIC);
	return ts.tv_sec*pow(10,9) + ts.tv_nsec;
}

int main(){
	int N=100;
	unsigned long long x = 0;
	unsigned long long y = 1;
	long start = current_time();
	fib(N, x, y);
	long end = current_time();
	cout << endl << "Time taken(in ns): " << end - start;
	return 0;
}
