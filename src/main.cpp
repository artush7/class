#include "func.h"
int my_var = 7;

int main()
{
    int a = 1;
    int b = 2;
    int ir_c = sum(a,b);
    change_my_var(ir_c);
    return my_var;
}

extern "C" int f (int c)
{
    return c*c;
}