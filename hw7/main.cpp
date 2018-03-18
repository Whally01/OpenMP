#include <stdio.h>
#include <omp.h>

#define dim 12

int main() {

    int a[dim], b[dim], c[dim];

    printf("Static:\n");

#pragma omp parallel for schedule(static, 4) num_threads(3)
    for (int i = 0; i < dim; i++) {
        a[i] = i * 3;
        b[i] = i * 2;
        printf("i = %d. в процессе поток %d из %d\n", i, omp_get_thread_num(), omp_get_num_threads());
    }
    printf("\n");

    for (int i = 0; i < dim; i++) {
        printf("%d ", a[i]);
    } printf("\n");

    for (int i = 0; i < dim; i++) {
        printf("%d ", b[i]);
    } printf("\n");


    printf("\nDynamic:\n");

#pragma omp parallel for schedule(dynamic, 4) num_threads(4)
    for (int i = 0; i < dim; i++) {
        c[i] = a[i] + b[i];
        printf("i = %d. в процессе поток %d из %d\n", i, omp_get_thread_num(), omp_get_num_threads());
    }
    printf("\n");

    for (int i = 0; i < dim; i++) {
        printf("%d ", c[i]);
    }
}
