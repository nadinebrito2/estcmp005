#include <stdio.h>

int main()
{
	float f,c;
	
	printf("Informe a temperatura em graus Fahrenheit:");
	scanf("%f", &f);
	
	c = (5*((f-32) / 9));
	
	printf("%.1f C",c);

	return 0;
}