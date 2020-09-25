#include <stdio.h>
#include <stdlib.h>
#include <time.h>

long gcd(long a, long b)
{
    if (a == 0)
        return b;
    return gcd(b % a, a);
}
long gcd_for(long n1,long n2){
    long gcd;
    for(long i=1; i <= n1 && i <= n2; ++i)
    {
        // Checks if i is factor of both integers
        if(n1%i==0 && n2%i==0)
            gcd = i;
    }
    return gcd;
}

void generate_random(long l, long r, signed long long count,long *arr) { //this will generate random number in range l and r
    signed long long i;
    srand(time(0));
    for (i = 0; i < count; i++) {
        long rand_num = (rand() % (r - l + 1)) + l;
        arr[i] = rand_num;
    }
}

void test(int num_times,long *arr){
    for(int i =0; i<num_times;i++){
        long ret = gcd(arr[i],arr[i+1]);
    }
}
void test_loop(int num_times,long *arr){
    for(int i =0; i<num_times;i++){
        long ret = gcd_for(arr[i],arr[i+1]);
    }
}

int main() {
    unsigned long min = 0 ,max = 4294967291;
    signed long long num_times = 900000000;
    printf("Insert max and min number and number of runs\n");
    scanf("%d%d%d", &min, &max, &num_times);
    signed long long  lenght = num_times*2;
    long *arr = (long*)malloc(lenght*sizeof(long));

    generate_random(min,max,lenght,arr);
    printf("Test start\n");
    clock_t begin = clock();
    test(num_times,arr);
    clock_t end = clock();

    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Run time of euklid was %f\n",time_spent);
    begin = clock();
    test_loop(num_times,arr);
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Run time of for loop was %f\n",time_spent);
    free(arr);



    return 0;


}
