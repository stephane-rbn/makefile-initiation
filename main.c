#include <stdio.h>
#include "ft_prime.h"

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    ft_nfirst_prime(number);

    return 0;
}
