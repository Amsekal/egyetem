#include <iostream>
#include <string.h>
using namespace std;
void csere(int &a, int &b)
{
int c;
c=a;
a=b;
b=c;
}
int lnko(int a, int b)
{
while(a!=b)
{if(b>a)
csere(a,b);
a-=b;
}
return a;}
void kettes(int a)
{
int v[50],i=0;
while(a)
{v[i]=a%2;
a/=2;
i++;}
i--;
for(i;i>=0;i--)
cout<<v[i];
}
int main()
{//char s[50];
int a,b,i=0;
cout<<"Lnko ";
/*cin>>s;
cout<<"Hello "<<s<<endl;*/
cin>>a>>b;
cout<<lnko(a,b);
cout<<endl<<"Kettes szamrendszer: ";
cin>>a;
kettes(a);
a=1;
while(a)
{a=a<<1;
i++;}
cout<<i;
return 0;}
