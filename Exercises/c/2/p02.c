
#include <stdio.h>
#include <math.h>

int main()
{

int	x;
float	y;
int	a;

printf("Please enter two numbers:\n");
a = scanf("%d %f", &x, &y );

printf("The value from scanf was: %d\n",a);
printf("The value of x is: %d\n", x );
printf("The value of y is: %f\n", y);

}
