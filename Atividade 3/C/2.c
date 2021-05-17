#include <iostream>

int main() {

	float x = 0, y = 0;
	
	std::cout << "Informe x:" ;
	std::cin >> x;
	std::cout << "Informe y:" ;
	std::cin >> y;

	if(x > y){
		std::cout << x  ;
	}else if(y > x){
		std::cout << y  ;
	}else{
		std::cout << "numeros iguais" ;
	}
	
}