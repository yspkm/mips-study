CC=gcc
CCFLAGS = -I. 
# -Wall -I.

HDIR = .
TDIR = .
TARGET = mips-sim

$(TARGET): main.o printer.o reader.o sys_state.o
	$(CC) $(CCFLAGS) -o $(TDIR)/$(TARGET) main.o printer.o reader.o sys_state.o 

main.o: main.c $(HDIR)/printer.h $(HDIR)/sys_state.h
	$(CC) $(CCFLAGS) -c main.c 

printer.o: printer.c  $(HDIR)/printer.h $(HDIR)/reader.h $(HDIR)/mips_info.h
	$(CC) $(CCFLAGS) -c printer.c 

reader.o: reader.c $(HDIR)/reader.h $(HDIR)/mips_info.h $(HDIR)/sys_state.h
	$(CC) $(CCFLAGS) -c reader.c 

sys_state.o: sys_state.c $(HDIR)/sys_state.h 
	$(CC) $(CCFLAGS) -c sys_state.c

clean:
	rm -f *.o $(TARGET)
