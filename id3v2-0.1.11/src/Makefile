ID3=/home/sasl/shared/main3/env/tools/
CC = g++
CFLAGS= -o
LDLIBS=$(ID3)/include
CLIBS=$(ID3)/lib
SRC=cconvert.c list.c id3v2.c genre.c
OBJ=$(SRC:.o=.c)
INS= ~/Informatique/TP_solo

all: id3v2

.o:.c
	$(CC) -I $(LDLIBS) -DVERSION="\"${VERSION}\"" -c $(CFLAGS) $< $@

id3v2: $(OBJ)
	$(CC) -L $(CLIBS) -Wall $(CFLAGS) $@ $(OBJ)

install:
	
	mkdir -p $(INS)/bin
	cp id3v2 $(INS)
	 nroff ../id3v2.1 > $(INS)/man/man1/id3v2.1

clean:
	rm -f $(OBJ) id3v2

disclean: $(INS) clean

	rm -f $(INS)/bin/id3v2
	rm -f $(INS)/man/man1/id3v2.1

	
