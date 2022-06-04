#/bin/sh 

./src/mips-sim ./test-samples/test$1.bin > ./output/test$1.txt
diff ./output/test$1.txt ./test-samples/test$1.txt

exit 0
