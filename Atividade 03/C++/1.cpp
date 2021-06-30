#include <iostream>

int main() {

	int x = 0, y = 0;

	std::cin >> x;
	std::cin >> y;

	for (int i = x + 1; i < y; i++){
		std::cout << i << " ";
	}
}