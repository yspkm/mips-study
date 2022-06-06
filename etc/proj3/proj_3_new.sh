#/bin/sh 

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_1.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_1.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_1.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_2.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_2.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_2.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done


for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_3.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_3.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_3.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_4.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_4.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_4.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_5.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_5.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_5.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 4 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 4 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 8 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 8 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 16 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 16 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 32 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 32 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 64 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 64 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 128 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 128 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 256 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 256 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 512 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 512 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_6.inst > mine.txt
	./mips-sim-ans 1 1024 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 1024 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_6.inst > mine.txt
	./mips-sim-ans 2 2048 $var proj3_6.inst > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done


for var in [1 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 4 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 4 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 8 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 8 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 8 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 8 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 16 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 16 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 32 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 32 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 64 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 64 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 128 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 128 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 256 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 256 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 512 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 512 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 1024 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 1024 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_7.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 2048 $var proj3_7.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

for var in [1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000]
do
	./mips-sim 1 4 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 4 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 4 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 4 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 8 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 8 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 8 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 8 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 8 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 8 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 16 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 16 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 16 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 16 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 32 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 32 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 32 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 32 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 64 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 64 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 64 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 64 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 128 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 128 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 128 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 128 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 256 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 256 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 256 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 256 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 512 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 512 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 512 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 512 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 1 1024 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 1 1024 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 1024 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 1024 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt

	./mips-sim 2 2048 $var proj3_8.inst proj3_7_8.data > mine.txt
	./mips-sim-ans 2 2048 $var proj3_8.inst proj3_7_8.data > ans.txt
	diff ans.txt mine.txt
	rm ans.txt mine.txt
done

exit 0