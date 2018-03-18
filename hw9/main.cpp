#include <iostream>
#include <omp.h>
#include <random>

#define ROW 6
#define COL 8

#define R 50
int arr[ROW][COL];
int min = R + 1;
int max = -1;

void fillArr() {
    srand(time(NULL));
    for (int i = 0; i < ROW; i++) {
        for (int j = 0; j < COL; j++) {
            arr[i][j] = rand() % R;
        }
    }
}

void process() {
#pragma omp parallel for num_threads(4)
    for (int i = 0; i < ROW; i++) {
        for (int j = 0; j < COL; j++) {
            if (min > arr[i][j]) {
#pragma omp critical
                min = arr[i][j];
            }
            if (max < arr[i][j]) {
#pragma omp critical
                max = arr[i][j];
            }
        }
    }
}

void printArr() {
    for (int i = 0; i < ROW; i++) {
        for (int j = 0; j < COL; j++) {
            std::cout << arr[i][j];
            std::cout << " ";
        }
        std::cout << "\n";
    }
}

int main() {
    fillArr();
    process();

    printf("MAX: %d\nMIN: %d\n\n", max, min);

    printArr();
    return 0;
}