//Faça um programa que resolva a MÉDIA DA UEA
#include <stdio.h>

int main()
{
	float p1,p2,media;
	
	printf("Informe a nota da P1:");
	scanf("%f", &p1);
	printf("Informe a nota da P2:");
	scanf("%f", &p2);
	
	media = ((p1+p2)/2);
	
	if(media < 8){
		printf("sua media eh %.1f, precisa fazer prova final! ", media);
	}else{
			printf("sua media eh %.1f, aprovado!", media);
	}
	


	return 0;
}