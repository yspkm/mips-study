CC=gcc
CCFLAGS = -Wall -I.

HDIR = .
TDIR = .
TARGET = mips-sim

$(TARGET): main.o mips_isa.o reader.o sys_state.o cache.o
	$(CC) $(CCFLAGS) -o $(TDIR)/$(TARGET) main.o mips_isa.o reader.o sys_state.o cache.o -lm

main.o: main.c $(HDIR)/mips_isa.h $(HDIR)/sys_state.h $(HDIR)/cache.h
	$(CC) $(CCFLAGS) -c main.c 

mips_isa.o: mips_isa.c  $(HDIR)/mips_isa.h $(HDIR)/reader.h $(HDIR)/mips_info.h  $(HDIR)/sys_state.h $(HDIR)/cache.h
	$(CC) $(CCFLAGS) -c mips_isa.c 

reader.o: reader.c $(HDIR)/reader.h $(HDIR)/mips_info.h $(HDIR)/sys_state.h 
	$(CC) $(CCFLAGS) -c reader.c 

cache.o: cache.c $(HDIR)/cache.h $(HDIR)/sys_state.h
	$(CC) $(CCFLAGS) -c cache.c

sys_state.o: sys_state.c $(HDIR)/sys_state.h 
	$(CC) $(CCFLAGS) -c sys_state.c

clean:
	rm -f *.o $(TARGET)
