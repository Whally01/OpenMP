#include <iostream>
#include <random>

using namespace std;
#define dim 50
int arr[dim];

void fillArr() {
    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> dis(0, dim);
    for (int i = 0; i < dim; i++) {
        arr[i] = dis(gen);
    }
}

void printArr() {
    for (int i = 0; i < dim; ++i) {
        cout << arr[i];
        cout << " ";
    }
}

void maxMod() {
    int max = 0;

#pragma parallel for num_threads(4)
    for (int i = 0; i < dim; i++) {
#pragma omp critical
        {
            if (arr[i] % 7 == 0) {
                if (arr[i] > max) {
                    max = arr[i];
                }
            }
        }
    }

    printf("MAX mod 7:  %d\n\n", max);
}

int main() {
    fillArr();
    maxMod();
    printArr();
    return 0;
}