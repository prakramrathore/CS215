#include<bits/stdc++.h>
using namespace std;

long current_time(){
	struct timespec ts;
	timespec_get(&ts, CLOCK_MONOTONIC);
	return ts.tv_sec*pow(10,9) + ts.tv_nsec;
}

unsigned long long fib(int n, unsigned long long lookup[]){
    if(lookup[n] == 0){
        if(n <= 1){
            lookup[n] = n;
        }
        else{
            lookup[n] = fib(n-1, lookup) + fib(n-2, lookup) ;
        }
    }
    return lookup[n] ;
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL); cout.tie(NULL);
    unsigned long long lookup[101];
    for(int i=0; i<101; i++){
        lookup[i] = 0;
    }
    int n=100;
    long start = current_time();
    unsigned long long ans = fib(n, lookup) ;
    for(int i=0; i<n; i++){
        cout << lookup[i] << " "; 
    }
    long end = current_time();
    cout << endl << "Time taken(in ns): " << end - start;
    return 0;
}
