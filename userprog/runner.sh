#!/bin/sh
cd build;

#CREATE
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-normal -a create-normal -- -q  -f run create-normal < /dev/null 2> tests/userprog/create-normal.errors > tests/userprog/create-normal.output;
perl -I../.. ../../tests/userprog/create-normal.ck tests/userprog/create-normal tests/userprog/create-normal.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-empty -a create-empty -- -q  -f run create-empty < /dev/null 2> tests/userprog/create-empty.errors > tests/userprog/create-empty.output;
perl -I../.. ../../tests/userprog/create-empty.ck tests/userprog/create-empty tests/userprog/create-empty.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q  -f run create-null < /dev/null 2> tests/userprog/create-null.errors > tests/userprog/create-null.output;
perl -I../.. ../../tests/userprog/create-null.ck tests/userprog/create-null tests/userprog/create-null.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-bad-ptr -a create-bad-ptr -- -q  -f run create-bad-ptr < /dev/null 2> tests/userprog/create-bad-ptr.errors > tests/userprog/create-bad-ptr.output;
perl -I../.. ../../tests/userprog/create-bad-ptr.ck tests/userprog/create-bad-ptr tests/userprog/create-bad-ptr.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-long -a create-long -- -q  -f run create-long < /dev/null 2> tests/userprog/create-long.errors > tests/userprog/create-long.output;
perl -I../.. ../../tests/userprog/create-long.ck tests/userprog/create-long tests/userprog/create-long.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-exists -a create-exists -- -q  -f run create-exists < /dev/null 2> tests/userprog/create-exists.errors > tests/userprog/create-exists.output;
perl -I../.. ../../tests/userprog/create-exists.ck tests/userprog/create-exists tests/userprog/create-exists.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-bound -a create-bound -- -q  -f run create-bound < /dev/null 2> tests/userprog/create-bound.errors > tests/userprog/create-bound.output;
perl -I../.. ../../tests/userprog/create-bound.ck tests/userprog/create-bound tests/userprog/create-bound.result




#EXEC
#pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-once -a exec-once -p tests/userprog/child-simple -a child-simple -- -q  -f run exec-once < /dev/null 2> tests/userprog/exec-once.errors > tests/userprog/exec-once.output;
#perl -I../.. ../../tests/userprog/exec-once.ck tests/userprog/exec-once tests/userprog/exec-once.result;

#pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-arg -a exec-arg -p tests/userprog/child-args -a child-args -- -q  -f run exec-arg < /dev/null 2> tests/userprog/exec-arg.errors > tests/userprog/exec-arg.output;
#perl -I../.. ../../tests/userprog/exec-arg.ck tests/userprog/exec-arg tests/userprog/exec-arg.result;

#pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-multiple -a exec-multiple -p tests/userprog/child-simple -a child-simple -- -q  -f run exec-multiple < /dev/null 2> tests/userprog/exec-multiple.errors > tests/userprog/exec-multiple.output;
#perl -I../.. ../../tests/userprog/exec-multiple.ck tests/userprog/exec-multiple tests/userprog/exec-multiple.result;

#pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-missing -a exec-missing -- -q  -f run exec-missing < /dev/null 2> tests/userprog/exec-missing.errors > tests/userprog/exec-missing.output;
#perl -I../.. ../../tests/userprog/exec-missing.ck tests/userprog/exec-missing tests/userprog/exec-missing.result;

#pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bad-ptr -a exec-bad-ptr -- -q  -f run exec-bad-ptr < /dev/null 2> tests/userprog/exec-bad-ptr.errors > tests/userprog/exec-bad-ptr.output;
#perl -I../.. ../../tests/userprog/exec-bad-ptr.ck tests/userprog/exec-bad-ptr tests/userprog/exec-bad-ptr.result;

cd ..;
