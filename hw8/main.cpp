#include <iostream>
#include <omp.h>

using namespace std;
#define n 10
#define dim 100
int x[dim];
int y[dim];
int z[dim];
int A[dim][dim];
int result_vector[dim];


void fillVectors() {
    srand(time(NULL));
    for (int i = 0; i < dim; i++) {
        x[i] = rand() % n;
    }
    for (int i = 0; i < dim; i++) {
        y[i] = rand() % n;
    }
    for (int i = 0; i < dim; i++) {
        z[i] = x[i] + y[i];
    }
}

void fillMatrix() {
    srand(time(NULL));
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++)
            A[i][j] = rand() % n;
    }
}

void procConsistent() {
    for (int i = 0; i < dim; i++) {
        result_vector[i] = 0;
        for (int j = 0; j < dim; j++) {
            result_vector[i] += A[i][j] * z[j];
        }
    }
};

void procParallel() {
#pragma omp parallel for schedule(dynamic) num_threads(4)
    for (int i = 0; i < dim; i++) {
        result_vector[i] = 0;
        for (int j = 0; j < dim; j++) {
            result_vector[i] += A[i][j] * z[j];
            // printf("поток: %d\n", omp_get_thread_num());
        }
    }
};

void printResult() {
    for (int i = 0; i < dim; i++) {
        cout << result_vector[i];
        cout << " ";
    }
}

int main() {

    fillVectors();
    fillMatrix();

    /*Параллельное*/
    double parallel_start_time = omp_get_wtime();
    procParallel();
    double parallel_end_time = omp_get_wtime();

    /*Последовательное*/
    double start_time = omp_get_wtime();
    procConsistent();
    double end_time = omp_get_wtime();


    printf("Последовательное: %lf, параллельное: %lf\n", parallel_end_time - parallel_start_time,
           end_time - start_time);

    // printResult();

    return 0;
}