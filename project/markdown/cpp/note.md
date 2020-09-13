### 计算方法运行时间

```cpp
#include <iostream>
#include <time.h>

using namespace std;

int main()
{
    clock_t start, finish;
    double duration;
    start = clock();
    cout << "Hello world!" << endl;
    finish = clock();
    duration = (double)(finish - start) / CLOCKS_PER_SEC;
    cout << "time: " << duration << endl;
    return 0;
}
```
