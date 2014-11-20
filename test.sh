#!/bin/bash
printf "nsyscalls,ns/syscall,nctxsw,ns/ctxsw\n" > calls.csv
for i in {1..1000}
do
	a=`./timesyscall`
	b=`./timectxsw`
	printf $a,$b"\n" >> calls.csv
	echo $i
done
