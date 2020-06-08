nasm -f elf32 hello_world.asm -o hello_world.o
ld -m elf_i386 -o hello_world hello_world.o
./hello_world

