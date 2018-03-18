#include <iostream>
#include <cmath>


int main() {
    int a[30] = {1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1};
    int x = 0;

#pragma omp parallel for reduction(+: x) num_threads(4)
    for (int i = 0; i < sizeof(a) / sizeof(*a); i++) {
        x += a[sizeof(a) / sizeof(*a) - 1 - i] * pow(2, i);
    }
    printf("десятичное представление: %d", x);
    return 0;
}