#include<bits/stdc++.h>
using namespace std;

void fib(int n1, int n2, int N, int counter){
    if(counter>100){
        return;
    }
    counter++;
    cout<<n1<<" ";
    int temp = n2;
    n2 = n2 + n1;
    n1 = temp;
    fib(n1,n2,N,counter)
}

long current_time(){
	struct timespec ts;
	timespec_get(&ts, CLOCK_MONOTONIC);
	return ts.tv_sec*pow(10,9) + ts.tv_nsec;
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL); cout.tie(NULL);
    int N = 100;
    int n1 = 0;
    int n2 = 1;
    int counter = 1;
    long start = current_time();
    fib(n1,n2,N,counter);
    long end = current_time();
    cout << endl << "Time taken(in ns): " << end - start;

    return 0;
}