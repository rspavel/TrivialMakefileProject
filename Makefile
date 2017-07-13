CXX=g++
MPICXX=mpic++

USE_MPI=

ifeq ($(USE_MPI), YES)
	COMPILER=$(MPICXX)
else
	COMPILER=$(CXX)
endif

all: helloW

helloW: helloW.cpp
	$(COMPILER) helloW.cpp -o helloW

clean:
	rm -f ./helloW

