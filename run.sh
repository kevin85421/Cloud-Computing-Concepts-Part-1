#**********************
#*
#* Progam Name: MP1. Membership Protocol.
#*
#* Current file: run.sh
#* About this file: Submission shell script.
#* 
#***********************
#!/bin/sh
rm -rf grade-dir # Make sure grade-dir is clean before starting
rm -f dbg.*.log

mkdir grade-dir
cd grade-dir
wget https://spark-public.s3.amazonaws.com/cloudcomputing/assignments/mp1/mp1.zip || { echo 'ERROR ... Please install wget'; exit 1; }
unzip mp1.zip || { echo 'ERROR ... Zip file not found' ; exit 1; }
cd mp1
cp ../../MP1Node.* .
make clean > /dev/null
make > /dev/null
./Application testcases/singlefailure.conf > /dev/null
cp dbg.log ../../dbg.0.log
./Application testcases/multifailure.conf > /dev/null
cp dbg.log ../../dbg.1.log
./Application testcases/msgdropsinglefailure.conf > /dev/null
cp dbg.log ../../dbg.2.log
cd ../..
rm -rf grade-dir

