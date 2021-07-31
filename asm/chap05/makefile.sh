
program=$1
as --32 -gstabs -o ${program}.o ${program}.s
ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o ${program} -lc ${program}.o
