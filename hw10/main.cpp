#include <iostream>
#include <omp.h>
#include <random>

using namespace std;
#define dim 30
int a[dim];

void fillArr() {
    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> dis(0, 30);

    for (int i = 0; i < dim; i++) {
        a[i] = dis(gen);
    }
}

int procFind() {
    int k = 0;

#pragma omp parallel for num_threads(4)
    for (int i = 0; i < dim; i++) {
        if (a[i] % 9 == 0) {
#pragma omp atomic
            k++;
        }
    }
    return k;
}

void printArr() {
    cout << "array: ";
    for (int i = 0; i < dim; i++) {
        std::cout << a[i];
        std::cout << " ";
    }
}

int main() {
    fillArr();


    printf("count mod 9: %d\n\n", procFind());
    printArr();
    return 0;
}