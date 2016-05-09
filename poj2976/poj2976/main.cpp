//
//  main.cpp
//  poj2976
//
//  Created by Student04 on 16/5/8.
//  Copyright © 2016年 doudou. All rights reserved.
//

#include <iostream>
#include <cstdio>
#include <cstring>
#include <algorithm>
#include <stack>
#include <string>
#include <set>
#include <cmath>
#include <map>
#include <queue>
#include <sstream>
#include <vector>
#include <iomanip>
#define m0(a) memset(a,0,sizeof(a))
#define mm(a) memset(a,0x3f,sizeof(a))
#define m_1(a) memset(a,-1,sizeof(a))
#define f(i,a,b) for(i = a;i<=b;i++)
#define fi(i,a,b) for(i = a;i>=b;i--)
#define lowbit(a) ((a)&(-a))
#define FFR freopen("data1.txt","r",stdin)
#define FFW freopen("data2.txt","w",stdout)
#define INF 0x3f3f3f3f
typedef long long ll;
typedef long double ld;
const ld PI = acos(-1.0);
const ld esp = 1e-8;

using namespace std;
#define SIZE (1000+10 )

template<typename T> inline void read(T &x) {
    x = 0; T f = 1; char ch = getchar();
    while (!isdigit(ch)) { if (ch == '-') f = -1; ch = getchar(); }
    while (isdigit(ch)) { x = x * 10 + ch - '0'; ch = getchar(); }
    x *= f;
}

struct Po{
    int a,b;
};

Po aPo[SIZE];
double x;
ll sumA;
ll sumB;
int n;

bool cmp(const Po& k1,const Po& k2){
    return k1.a - x*k1.b<k2.a - x*k2.b;
}

bool isTrue(double m,int k){
    x = m;
    sort(aPo+1, aPo+1+n, cmp);
    int i;
    ll tA = sumA;
    ll tB = sumB;
    f(i,1,k){
        tA-=aPo[i].a;
        tB-=aPo[i].b;
    }
    ld ans = (ld)1.0*tA/tB;
    return ans>m;
}

int main(){
//    FFR;
//    FFW;
    int k = 0;
    while (1) {
        read(n);read(k);
        if (0==n&&0==k) {
            break;
        }
        int i;
        sumA = sumB = 0;
        f(i, 1, n){read(aPo[i].a);sumA+=aPo[i].a;}
        f(i, 1, n){read(aPo[i].b);sumB+=aPo[i].b;}
        double L(0.0),R(1.0),m(0.0);
        while (fabs(R-L)>esp) {
            m = (L+R)/2.0;
            if (isTrue(m,k)) {
                L = m;
            }else{
                R = m;
            }
        }
        m+=0.005;
        int ans = m*100;
        printf("%d\n",ans);
    }
    
    
    
    
    
    return 0;
}
