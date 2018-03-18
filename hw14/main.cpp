#include <iostream>

int pow(int x) {
    int sum = 0;
#pragma omp parallel for reduction(+: sum) num_threads(4)
    for (int i = 0; i < x; i++) {
        sum += x;
    }
    return sum;
}

int main() {
    printf("210^2%d\n", pow(210));
    return 0;
}