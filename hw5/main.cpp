#include <omp.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>


#define dim 50

int main() {
    int arr[6][8];
    srand(time(NULL));
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 8; j++) {
            arr[i][j] = rand() % dim;
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }

    printf("----------------------\n");


#pragma omp parallel sections
    {
#pragma omp section
        {
            int e = 0;
            int amt = 0;
            for (int i = 0; i < 6; i++) {
                for (int j = 0; j < 8; j++) {
                    amt += arr[i][j];
                    e++;
                }
            }
            printf("Поток %d: Ср.ариф %.2f\n", omp_get_thread_num(), amt * 1.0 / e);

        }

#pragma omp section
        {
            int min = dim + 1;
            int max = 0;

            for (int i = 0; i < 6; i++) {
                for (int j = 0; j < 8; j++) {
                    if (max < arr[i][j]) {
                        max = arr[i][j];
                    }

                    if (min > arr[i][j]) {
                        min = arr[i][j];
                    }
                }
            }
            printf("Поток %d: Макс зн-ие %d, и мин зн-ие %d\n", omp_get_thread_num(), max, min);
        }

#pragma omp section
        {
            int amt = 0;
            for (int i = 0; i < 6; i++) {
                for (int j = 0; j < 8; j++) {
                    if (arr[i][j] % 3 == 0) {
                        amt ++;
                    }
                }
            }
            printf("Поток %d: mod 3:  %d \n",omp_get_thread_num(), amt);
        }
    }
    return 0;
};