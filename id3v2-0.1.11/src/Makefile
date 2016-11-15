ID3=/home/sasl/shared/main3/env/tools/
CC = g++
CFLAGS= -o
LDLIBS=$(ID3)/include
CLIBS=$(ID3)/lib
SRC=cconvert.c list.c id3v2.c genre.c
OBJ=$(SRC:.o=.c)


all: id3v2

.o:.c
	$(CC) -I $(LDLIBS) -DVERSION="\"${VERSION}\"" -c $(CFLAGS) $< $@

id3v2: $(OBJ)
	$(CC) -L $(CLIBS) -Wall $(CFLAGS) $@ $(OBJ)

install:
	
	mkdir -p ~/Informatique/TP_solo/bin
	cp id3v2 ~/informatique/TP_solo/bin
clean:
	rm -f $(OBJ) id3v2
