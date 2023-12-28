#include <stdbool.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>


/**
 * n -> entier max considéré
 * 0 -> pas premier
 * 1 -> premier
*/
long int *crible_eratosthene(long int n){

    long int *crible = (long int*)malloc(n*sizeof(long int));

    crible[0] = 0;
    crible[1] = 0;
    
    for(long int i=0; i<n; i++){
        if(crible[i] == 1){
            for(long int j=i+1; j<n-1; j++){
                if(j%i == 0){
                    crible[j] = 0;
                }
            }
        }
    }
    return crible;
}


int main(void){
    long int guess = 600851475143;
    long int *crible = crible_eratosthene(guess);

    for(long int i=0; i<guess; i++){
        if(crible[i] == 1){
            printf("%ld\n", i);
        }
    }
    return 0;
}