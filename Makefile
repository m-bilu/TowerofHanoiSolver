# MAKE updates .o files based on timestamps comparing .o with .cc
# This is why updated comment/touching .cc file will prompt recompilation
CXX	= g++ -g # Compiler
CXXFLAGS= -std=c++14 -Wall -MMD # Compiler Flags, -MMD creates DEPENDANCY FILES .d WHICH HOLD DEPENDANCY COMMAND
OBJECTS	= main.o hanoi.o
DEPENDS	= ${OBJECTS:.o=.d} # For every object, there is a dependancy file with .d
EXEC	= hanoiSolver.exe # Final Executable Name

# MAKE WITH NO COMMAND RUNS FIRST LINE
${EXEC}: ${OBJECTS}
	${CXX} ${OBJECTS} -o ${EXEC} # NO FLAGS, THIS IS AFTER ALL OBJECT FILES ARE DONE




.PHONY: clean # clean IS NOT A FILE, is a command

# DONT MAKE CLEAN FIRST, IT WILL BECOME DEFAULT
clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS} # REMOVES ALL NON-SOURCE FILES, .o files, etc

-include {DEPENDS}

