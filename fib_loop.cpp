using namespace std;

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
	for(int i=0; i < N/2; i++){
		cout << x << " " << y << " " ;
		x = x + y;
		y = x + y; 
	}
	
	long end = current_time();
	cout << endl << "Time taken(in ns): " << end - start;
	
	return 0;
}
