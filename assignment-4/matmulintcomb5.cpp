#include<bits/stdc++.h>
using namespace std;

const int n = 512;

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

void matrix_mul(int m1[][n], int m2[][n], int n){
    int resultant_matrix[n][n];
    long start = currentTime();
    for(int k = 0; k<n; k++){
        for(int i = 0; i<n; i++){
            for(int j = 0; j<n; j++){
            	 if(k==0){
            	 	resultant_matrix[i][j] = 0;
            	 }
                resultant_matrix[i][j] += m1[i][k]*m2[k][j];
            }
        }
    }
    long end = currentTime();
    cout<<endl<< "Meat Portion for N = "<<n<<" for combination 5, Time taken(in ns)= " << end - start;
    return;
}

int main(){
    int m1[n][n];
    int m2[n][n];
    for(int i = 0; i<n; i++){
        for(int j = 0; j<n; j++){
            m1[i][j] = rand();
            m2[i][j] = rand();
        }
    }
    matrix_mul(m1,m2,n);
    return 0;
}
