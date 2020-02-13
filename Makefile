test.cc: test.exe
	g++ -std=c++11 -I /home/liu_lab/shared/include/ -L /home/liu_lab/shared/lib/ -lCore -lMathCore rndm.cc -o rndm.exe

