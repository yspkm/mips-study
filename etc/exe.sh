#/bin/sh 

for var in {1..100..1}
do
    ./mips-sim $var ./proj2_1.inst > ./mine.txt
    ./mips-sim-ans $var ./proj2_1.inst > ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done

for var in {1..100..1}
do
    ./mips-sim $var ./proj2_2.inst > ./mine.txt
    ./mips-sim-ans $var ./proj2_2.inst > ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done


for var in {1..100..1}
do
    ./mips-sim $var ./proj2_3.inst ./proj2_3.data> ./mine.txt
    ./mips-sim-ans $var ./proj2_3.inst ./proj2_3.data> ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done


for var in {1..100..1}
do
    ./mips-sim $var ./proj2_4.inst ./proj2_3.data> ./mine.txt
    ./mips-sim-ans $var ./proj2_4.inst ./proj2_3.data> ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done


for var in {1..100..1}
do
    ./mips-sim $var ./proj2_5.inst ./proj2_5.data> ./mine.txt
    ./mips-sim-ans $var ./proj2_5.inst ./proj2_5.data> ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done

for var in {1..100..1}
do
    ./mips-sim $var ./proj2_6.inst ./proj2_6.data> ./mine.txt
    ./mips-sim-ans $var ./proj2_6.inst ./proj2_6.data> ./ans.txt
    diff ans.txt mine.txt
    rm ans.txt mine.txt
done

exit 0
