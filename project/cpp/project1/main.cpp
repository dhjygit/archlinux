#include <iostream>
#include <time.h>

using namespace std;

void factor1(int n);
void factor2(int n);

int main()
{
    int n;
    double time;
    clock_t start, finish;
    cin >> n;

    start = clock();
    factor1(n);
    finish = clock();
    time = (double)(finish - start) / CLOCKS_PER_SEC;
    cout << "time: " << time << endl;

    start = clock();
    factor2(n);
    finish = clock();
    time = (double)(finish - start) / CLOCKS_PER_SEC;

    cout << "time: " << time << endl;

    return 0;
}

void factor1(int n)
{
    long long i, j, factorial, sum;
    for (i = 1, sum = 0; i <= n; i++)
    {
        for (j = 1, factorial = 1; j <= i; j++)
        {
            factorial *= j;
        }
        sum += factorial;
    }
    cout << sum << endl;
}

void factor2(int n)
{
    long long i, factorial, sum;
    for (i = 1, factorial = 1, sum = 0; i <= n; i++)
    {
        factorial *= i;
        sum += factorial;
    }
    cout << sum << endl;
}
