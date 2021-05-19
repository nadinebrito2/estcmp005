//Faça um Programa que peça dois números e imprima o maior deles.
#include <stdio.h>

int main()
{
	float x,y;
	printf("Informe x:");
	scanf("%f", &x);
	printf("Informe y:");
	scanf("%f", &y);
	
	if(x > y){
		printf("%.1f", x);
	}else if(y > x){
		printf("%.1f", y);
	}else{
		printf("numeros iguais");
	}
	return 0;
}