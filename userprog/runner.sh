#!/bin/sh
cd build;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-once -a exec-once -p tests/userprog/child-simple -a child-simple -- -q  -f run exec-once < /dev/null 2> tests/userprog/exec-once.errors > tests/userprog/exec-once.output;
perl -I../.. ../../tests/userprog/exec-once.ck tests/userprog/exec-once tests/userprog/exec-once.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-arg -a exec-arg -p tests/userprog/child-args -a child-args -- -q  -f run exec-arg < /dev/null 2> tests/userprog/exec-arg.errors > tests/userprog/exec-arg.output;
perl -I../.. ../../tests/userprog/exec-arg.ck tests/userprog/exec-arg tests/userprog/exec-arg.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-multiple -a exec-multiple -p tests/userprog/child-simple -a child-simple -- -q  -f run exec-multiple < /dev/null 2> tests/userprog/exec-multiple.errors > tests/userprog/exec-multiple.output;
perl -I../.. ../../tests/userprog/exec-multiple.ck tests/userprog/exec-multiple tests/userprog/exec-multiple.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-missing -a exec-missing -- -q  -f run exec-missing < /dev/null 2> tests/userprog/exec-missing.errors > tests/userprog/exec-missing.output;
perl -I../.. ../../tests/userprog/exec-missing.ck tests/userprog/exec-missing tests/userprog/exec-missing.result;

pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bad-ptr -a exec-bad-ptr -- -q  -f run exec-bad-ptr < /dev/null 2> tests/userprog/exec-bad-ptr.errors > tests/userprog/exec-bad-ptr.output;
perl -I../.. ../../tests/userprog/exec-bad-ptr.ck tests/userprog/exec-bad-ptr tests/userprog/exec-bad-ptr.result;

cd ..;
