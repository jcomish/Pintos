Steps to perform to get Pintos up and running.
=============================================
0. I am assuming you have Linux running in Virtual Box or natively
1. Make sure your linux is up-to-date
   sudo apt-get update
   
2. Install the C language support (headers and libraries)
   sudo apt-get install clang
   
3. Install x86 Emulator (Qemu) and set it up
   sudo apt-get install qemu
   cd /usr/bin
   sudo ln -s qemu-system-i386 qemu
   
4. Modify the file: project3/utils/pintos
   Line number 260:
   	my $name =  "/home/ramesh/EE382V/project3/userprog/build/kernel.bin";
	
   must have the path to your project3
   
5. Modify the file: project3/utils/Pintos.pm
   Line number 363:
        $name = find_file ("/home/ramesh/EE382V/project3/userprog/build/loader.bin") if !defined $name;
	
   must have the path to your project3
   
6. Modify the file: project3/utils/pintos-gdb
   Line number 5
       GDBMACROS=/home/ramesh/EE382V/project3/misc/gdb-macros

   must have the path to your project3


7. Add the utils directory to your PATH
   export PATH=/home/ramesh/EE382V/project3/utils:$PATH

8. Build and run pintos userprogs
   cd userprog
   make
   cd build
   make check
   


Running Pintos for one test case at a time to Test and Debug
============================================================
To just run one testcase, simply cut-and-pase the command from make check.

For example this is what the output from make check for the very first testcase looks like:
     pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q  -f run args-none < /dev/null 2> tests/userprog/args-none.errors > tests/userprog/args-none.output
     perl -I../.. ../../tests/userprog/args-none.ck tests/userprog/args-none tests/userprog/args-none.result
     FAIL tests/userprog/args-none
     Run didn't produce any output

Pintos is launched for the specific testcase (args-none here) and the output produced is stored in a file (tests/userprog/args-none.output here). A perl script is run to compare the output produced with the expected output. The script says FAIL or pass depending on a mismatch or match.

To Debug you will need to launch pintos using gdb (Look at video on Canvas).

   
