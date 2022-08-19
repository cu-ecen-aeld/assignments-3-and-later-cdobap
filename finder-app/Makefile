CC	= gcc

CROSS_COMPILE	=

CFLAGS	= -Wall

LFLAGS	=

LIBS	=

OBJFILES= writer.o

MAIN	= writer

all: $(MAIN)

$(MAIN): $(OBJFILES)
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -o $(MAIN) $(OBJFILES)
    
%.o: %.c
	$(CC) $(CROSS_COMPILE) $(CFLAGS) -c -o $@ $<
    
clean:
	rm -f $(OBJFILES) $(MAIN)
