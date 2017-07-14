CXX=g++
MPICXX=mpic++

USE_MPI=

PREFIX=.
COMPILER=

CP=cp

ifeq (${USE_MPI}, YES)
	COMPILER=${MPICXX}
else
	COMPILER=${CXX}
endif

all: helloW

helloW: helloW.cpp
	${COMPILER} helloW.cpp -o helloW

install: helloW
	${CP} helloW ${PREFIX}/helloW

clean:
	rm -f ./helloW

