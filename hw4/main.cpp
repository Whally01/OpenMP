#include <iostream>
#include <omp.h>

int main() {
    int a[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int b[10] = {9, 6, 4, 7, 0, 3, 9, 5, 2, 8};

    int max = 10;
    int min = 0;

#pragma omp parallel sections num_threads(2)
    {
#pragma omp section
        {
            for (int i = 0; i < 10; i++) {
                if (min > a[i]) { min = a[i]; }
            }
            printf("Поток %d: min %d\n",omp_get_thread_num(), min );
        }

#pragma omp section
        {
            for (int i = 0; i < 10; i++) {
                if (max < b[i]) { max = b[i]; }
            }
            printf("Поток %d: max %d",omp_get_thread_num(), max );
        }

    }
    return 0;
}