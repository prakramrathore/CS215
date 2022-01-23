#include<bits/stdc++.h>
using namespace std;

const int n = 512;

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

void matrix_mul(double m1[][n], double m2[][n], int n){
    double resultant_matrix[n][n];
    long start = currentTime();
    for(int i = 0; i<n; i++){
        for(int j = 0; j<n; j++){
            resultant_matrix[i][j] = 0;
            for(int k = 0; k<n; k++){
                resultant_matrix[i][j] = m1[i][k]*m2[k][j];
            }
        }
    }
    long end = currentTime();
    for(int i = 0;i<n; i++){
    	for(int j = 0; j<n; j++){
    		cout<<resultant_matrix[i][j]<<" ";
    	}
    	cout<<endl;
    }
    cout<<endl<< "Meat Portion for N = "<<n<<" Time taken(in ns)= " << end - start;
    return;
}

int main(){
    double m1[n][n];
    double m2[n][n];
    for(int i = 0; i<n; i++){
        for(int j = 0; j<n; j++){
            m1[i][j] = rand();
            m2[i][j] = rand();
        }
    }
    matrix_mul(m1,m2,n);
    return 0;
}
