#ifndef HANOI_H
#define HANOI_H

class Hanoi {

	public:
		Hanoi() {}
		// GAME STARTS WITH N RINGS ON LEFT PEG, CENTER AND RIGHT ARE EMPTY.
		void move(int size, char current, char dest, char aux);
		// Recursive function, solves Hanoi Game, ends recursion when Left 
		// and Center pegs (linked lists) are empty (null)
		

};

#endif
