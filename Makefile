EXENAME = Project
OBJS = main.o

CXX := clang++
CXXFLAGS :=	-std=c++11 -stdlib=libc++ -c -g -O0 -Wall -Wextra -pedantic
LD	=	clang++
LDFLAGS =	-std=c++1y -stdlib=libc++ -lpthread -lm

all	:	$(EXENAME)


$(EXENAME)	:	$(OBJS)
					$(LD) $(OBJS) $(LDFLAGS) -o $(EXENAME)

main.o : main.cpp
	$(CXX) $(CXXFLAGS) main.cpp
