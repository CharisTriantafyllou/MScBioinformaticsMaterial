
#include <stdio.h>
#include <math.h>

int main()
{

float x;
float y;

for ( x=-10 ; x <= 100 ; x=x+3 )
	{
		if ( x >=0)
		{
			y=sqrt(x);
			printf("The square root of %f is %f\n", x, y);
		}
	}

}
