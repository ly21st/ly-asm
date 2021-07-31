program=$1

as --32 -gstabs -o ${program}.o ${program}.s
ld -m elf_i386 -L/lib -dynamic-linker /lib/ld-linux.so.2 -lc -o ${program} ${program}.o 