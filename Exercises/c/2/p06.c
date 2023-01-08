
#include <stdio.h>
#include <math.h>

int main()
{
	char k;
	int total = 0, length = 0;
	float content;

	while( scanf("%c", &k ) == 1)
	{
	length++;
	if (k == 'G' || k == 'C')
	{
	total++;
	}

	}

	printf("The GC content is: %d\n", (100*total)/length );

}
