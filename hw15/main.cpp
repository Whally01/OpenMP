#include <iostream>

using namespace std;
int from;
int to;

bool check(int n) {
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

void proc() {
    cout << "Диапазон от: ";
    cin >> from;
    cout << "до: ";
    cin >> to;
    if (to < from) {
        cout << "Выберите правильный диапазон!\n";
    } else {
#pragma omp parallel for ordered schedule(static) num_threads(4)
        for (int i = from; i <= to; i++) {
            if (check(i)) {
#pragma omp ordered
                cout << i << endl;
            }
        }
    }
}

int main() {
    proc();
    return 0;
}