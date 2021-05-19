#include <stdio.h>

int main()
{
	int x,y;
	scanf("%d", &x);
	scanf("%d", &y);
	
	for(int i=x+1;i<y;i++){
		printf("%d ",i);
	}
	return 0;
}