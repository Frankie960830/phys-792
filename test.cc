#include<iostream>
#include<TRandom3.h>
using namespace std;
int main ()
{
  int a = 2;
  int b = 3;
  int c = a*b;
  cout<<c<<endl;

  TRandom3 generator(0);
  cout<<generator.Rndm()<<endl;

  return 0;
}
