//Faça um Programa que peça a temperatura em graus Fahrenheit,
// transforme e mostre a temperatura em graus Celsius.
//C = 5 * ((F-32) / 9).
#include <iostream>

int main()
{
	float f,c;
	
	std::cout << "Informe a temperatura em graus Fahrenheit:";
	std::cin >> f;
	
	c = (5*((f-32) / 9));
	
	std::cout << c << " C";

	return 0;
}