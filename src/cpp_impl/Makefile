defule:
	g++ -fopenmp -g -O2 -o forest main.cpp generator.cpp forest.cpp
test:
	./forest -t 1 -n 32 -d 6 -m 4 -s 20
clean:
	rm -rf forest *.o *~ *.*~
