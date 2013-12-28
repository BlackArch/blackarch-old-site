export TOOL_COUNT=606

for i in generators/*.sh ; do
	sh $i > `basename $i .sh`
done
