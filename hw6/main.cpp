#include <stdio.h>
#include <omp.h>

int main() {

    int a[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int b[10] = {8, 8, 6, 5, 1, 1, 5, 6, 8, 8};

    int amt_a = 0, amt_b = 0;
#pragma omp parallel for reduction(+: amt_a) reduction(+: amt_b)
    for (int i = 0; i < 10; i++) {
        amt_a += a[i];
        amt_b += b[i];
    }

    printf("Ср.ариф:\n a[10]: %d\n b[10]: %d\n", amt_a / 10, amt_b / 10);
    return 0;

}