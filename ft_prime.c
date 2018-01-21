#include <stdio.h>
#include "ft_prime.h"

/* Check if a number is prime or not */
int ft_prime(int number) {
    int index;
    int prime;

    prime = 1;

    for (index = number - 1; index >= 2; index--) {
        if (number % index == 0) {
            return 0;
        }
    }

    return prime;
}

/* Print the N first primes */
void ft_nfirst_prime(int number) {
    int index;
    int counter;

    index = 1;
    counter = 0;

    while (counter < number) {
        if (ft_prime(index) != 0) {
            printf("%d ", index);
            counter++;
        }

        index++;
    }

    printf("\n");
}
