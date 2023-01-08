
#include <stdio.h>
#include <math.h>

int main()
{

float x;
float y;

while ( x <= 100 )
	{
		y=sqrt(x);
		printf("The square root of %f is %f\n", x, y);
		x += 3;
	}

}
