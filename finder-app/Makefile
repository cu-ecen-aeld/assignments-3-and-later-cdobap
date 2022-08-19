CC	= gcc

CROSS_COMPILE	=

CFLAGS	= -Wall -Wextra

LFLAGS	= 

LIBS	=

OBJFILES= writer.o

MAIN	= writer

all: $(MAIN)

$(MAIN): $(OBJFILES)
	$(CC) $(CROSS_COMPILE) .$(CFLAGS) -o $(MAIN) $(OBJFILES)
    
%.o: %.c
	$(CC) $(CROSS_COMPILE) $(CFLAGS) -c -o $@ $<
    
clean:
	rm -f $(OBJFILES) $(MAIN)
