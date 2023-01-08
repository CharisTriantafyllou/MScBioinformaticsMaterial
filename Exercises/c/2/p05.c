
#include <stdio.h>
#include <math.h>

int main()
{
	char k;
	int total = 0;

	while( scanf("%c", &k ) == 1)
	{

		if (k == 'c' || k == 'C')
		{
		total++;
		}

	}
	printf("The number of Cs is: %d\n",total);

}
