node 4klang.inc.js
yasm -f elf32 4klang.asm
gcc -m32 4klang.o 4klangrender.c -o 4klangrender
node livereload.js | sox -S -t raw -b 32 -e float -r 44100 -c 2 - -d
#./4klangrender | sox -S -t raw -b 32 -e float -r 44100 -c 2 - out.wav

