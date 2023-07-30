CXX=clang++ -DUSE_CHRONO=1
CXXFLAGS=-std=c++14 -Wall -O3

all: a.out

run: a.out
	./run.py

clean:
	rm -f a.out

a.out: bench.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ bench.cpp
