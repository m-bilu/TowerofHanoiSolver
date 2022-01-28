#include "hanoi.h"
#include <iostream>

void Hanoi::move(int size, char current, char dest, char aux) {
	
	if (size == 0) { return; } // we are done

	move(size - 1, current, aux, dest);
	// current call, execute movemove
	
	std::cout << "Moving ring " << size << " from peg " << current << " to peg " << dest << "."<< std::endl;	
	move(size - 1, aux, dest, current);

}

