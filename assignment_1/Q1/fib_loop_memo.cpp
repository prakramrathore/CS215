#include<bits/stdc++.h>
using namespace std;

long current_time(){
	struct timespec ts;
	timespec_get(&ts, CLOCK_MONOTONIC);
	return ts.tv_sec*pow(10,9) + ts.tv_nsec;
}

signed main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL); cout.tie(NULL);
    int N=100;
    unsigned long long x = 0; 
    unsigned long long y = 1;
    unsigned long long lookup[N];
    lookup[0] = x;
    lookup[1] = y;
    long start = current_time();
    for(int i=0; i < N/2; i++){
        x += y;
        lookup[2*(i+1)] = x; 
        y += x;
        lookup[2*(i+1)+1] = y;
    }
    for(int i=0; i<N; i++){
        cout << lookup[i] << " "  ;
    }
    long end = current_time();
    cout << endl << "Time taken(in ns): " << end - start;
    return 0;
}
