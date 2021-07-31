program=$1

gcc -m32 ${program}.c -S
as --32 -gstabs -o ${program}.o ${program}.s
#ld -m elf_i386 -L/lib -dynamic-linker /lib/ld-linux.so.2 -lc -o ${program} ${program}.o 
ld -m elf_i386 -L/lib -dynamic-linker /lib/ld-linux.so.2  ${program}.o  /usr/lib/crt1.o /usr/lib/crti.o   /usr/lib/crtn.o -lc -o ${program}

  