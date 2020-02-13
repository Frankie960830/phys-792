#include<iostream>
#include<TRandom3.h>
using namespace std;
int main ()
{
    TRandom3 generator(0);
    cout<<generator.Poisson(100)<<endl;

    return 0;
}
