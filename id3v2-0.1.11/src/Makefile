ID3=/home/sasl/shared/main3/env/tools/
CC = g++
CFLAGS= -o
LDLIBS=$(ID3)/include
CLIBS=$(ID3)/lib
SRC=convert.cpp list.cpp id3v2.cpp genre.cpp 
OBJ=$(SRC:.cpp=.o)
INS= ~/Informatique/TP_solo


all: id3v2 install 

%.o:%.cpp
	$(CC) -I $(LDLIBS) -DVERSION="\"${VERSION}\"" -c $(CFLAGS) $@ $< 

id3v2: $(OBJ)
	$(CC) -L $(CLIBS) -Wall $(CFLAGS) $@ $(OBJ) -lid3 -lz

install:
	mkdir -p $(INS)/bin
	cp id3v2 $(INS)/bin
	 nroff ../id3v2.1 > $(INS)/man/man1/id3v2.1

clean:
	rm -f $(OBJ) id3v2

distclean: $(INS) clean

	rm -f $(INS)/bin/id3v2
	rm -f $(INS)/man/man1/id3v2.1


# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/sasl/shared/main/env/tools/lib
# export PATH=$PATH:~/Informatique/TP_solo/bin
