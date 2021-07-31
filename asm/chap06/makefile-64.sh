
program=$1
as  -gstabs -o ${program}.o ${program}.s
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o ${program} -lc ${program}.o