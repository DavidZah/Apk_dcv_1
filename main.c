/***
 * Autor David Žahour
 * APK 25.09.2020
 * Kód nebyl testován sestrojen čistě pro zábavu
 * #JAVASUCK
 * Program nemá ošetřené vstupy
 * */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
/*
 * Euklidovo alroritmus
 * */
long gcd(long a, long b)
{
    if (a == 0)
        return b;
    return gcd(b % a, a);
}
/*
 * For loop algoritmus
 * */
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
/*
 * Generátor pole pro testování
 * */
void generate_random(long l, long r, signed long long count,long *arr) { //this will generate random number in range l and r
    signed long long i;
    srand(time(0));
    for (i = 0; i < count; i++) {
        long rand_num = (rand() % (r - l + 1)) + l;
        arr[i] = rand_num;
    }
}
/*Testovací funkce pro alrgoritmy*/
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
    unsigned long min,max;
    signed long long num_times ;
    printf("Insert max and min number and number of runs\n");
    scanf("%d%d%d", &min, &max, &num_times);
    signed long long  lenght = num_times*2;
    //čistě pro zábavu
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
    printf("Press Any Key to Exit\n");
    getchar();
    return 0;
}
