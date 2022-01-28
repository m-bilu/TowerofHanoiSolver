#include "hanoi.h"
#include <iostream>

int main() {

	int ringcap;
	
	std::cout << "Welcome to the Tower of Hanoi Solver! Please choose a number of rings:" << std::endl;

	std::cin >> ringcap;

	Hanoi game{};

	game.move(ringcap, 'A', 'C', 'B');



}



