#/bin/sh 

./mips-sim 1 4 1000 proj3_1.inst > mine.txt
./mips-sim-ans 1 4 1000 proj3_1.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 1 32 1000 proj3_1.inst > mine.txt
./mips-sim 1 32 1000 proj3_1.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 64 1000 proj3_1.inst > mine.txt
./mips-sim-ans 2 64 1000 proj3_1.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 1 64 1000 proj3_2.inst > mine.txt
./mips-sim-ans 1 64 1000 proj3_2.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 64 1000 proj3_2.inst > mine.txt
./mips-sim-ans 2 64 1000 proj3_2.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 32 1000 proj3_3.inst > mine.txt
./mips-sim-ans 2 32 1000 proj3_3.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 64 1000 proj3_3.inst > mine.txt
./mips-sim-ans 2 64 1000 proj3_3.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 1 32 1000 proj3_4.inst > mine.txt
./mips-sim-ans 1 32 1000 proj3_4.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 32 1000 proj3_4.inst > mine.txt
./mips-sim-ans 2 32 1000 proj3_4.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 1 32 1000 proj3_5.inst > mine.txt
./mips-sim-ans 1 32 1000 proj3_5.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 32 1000 proj3_5.inst > mine.txt
./mips-sim-ans 2 32 1000 proj3_5.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 1 64 1000 proj3_6.inst > mine.txt
./mips-sim-ans 1 64 1000 proj3_6.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 32 1000 proj3_6.inst > mine.txt
./mips-sim-ans 2 32 1000 proj3_6.inst > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 64 10000000 proj3_7.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 64 10000000 proj3_7.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 128 10000000 proj3_7.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 128 10000000 proj3_7.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 256 10000000 proj3_7.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 256 10000000 proj3_7.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 64 10000000 proj3_8.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 64 10000000 proj3_8.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 128 10000000 proj3_8.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 128 10000000 proj3_8.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

./mips-sim 2 256 10000000 proj3_8.inst proj3_7_8.data > mine.txt
./mips-sim-ans 2 256 10000000 proj3_8.inst proj3_7_8.data > ans.txt
diff ans.txt mine.txt
rm ans.txt mine.txt

exit 0
