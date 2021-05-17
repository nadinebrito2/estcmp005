#include <iostream>

int main()
{
	float p1,p2,media;
	
	std::cout <<"Informe a nota da P1:";
	std::cin >> p1;
	std::cout <<"Informe a nota da P2:";
	std::cin >> p2;
	
	media = ((p1+p2)/2);
	
	std::cout << "sua media eh " << media;

	return 0;
}