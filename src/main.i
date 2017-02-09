# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 99 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 37 "/usr/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 3 4
# 1 "/usr/avr/include/stdint.h" 1 3 4
# 122 "/usr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 143 "/usr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 160 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 214 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 274 "/usr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 2 3 4
# 38 "/usr/avr/include/inttypes.h" 2 3
# 77 "/usr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/avr/include/avr/io.h" 2 3
# 380 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/iotn85.h" 1 3
# 38 "/usr/avr/include/avr/iotn85.h" 3
# 1 "/usr/avr/include/avr/iotnx5.h" 1 3
# 39 "/usr/avr/include/avr/iotn85.h" 2 3
# 381 "/usr/avr/include/avr/io.h" 2 3
# 538 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/portpins.h" 1 3
# 539 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/common.h" 1 3
# 541 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/version.h" 1 3
# 543 "/usr/avr/include/avr/io.h" 2 3






# 1 "/usr/avr/include/avr/fuse.h" 1 3
# 239 "/usr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 550 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/lock.h" 1 3
# 553 "/usr/avr/include/avr/io.h" 2 3
# 2 "main.c" 2

void main() {
 (*(volatile uint8_t *)((0x17) + 0x20)) = (1 << (0));
 (*(volatile uint8_t *)((0x29) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x2A) + 0x20)) = (1 << (1)) | (1 << (6));
 (*(volatile uint8_t *)((0x33) + 0x20)) = (1 << (2));

 (*(volatile uint8_t *)((0x07) + 0x20)) = 1 | (1 << (5));
 (*(volatile uint8_t *)((0x06) + 0x20)) = (1 << (7));
 while(1) {
  (*(volatile uint8_t *)((0x06) + 0x20)) |= (1 << (6));
  while((*(volatile uint8_t *)((0x06) + 0x20)) & (1 << (6))){
  }
  unsigned char t = (*(volatile uint8_t *)((0x05) + 0x20));
  (*(volatile uint8_t *)((0x29) + 0x20)) = t >> 2;
 }
}
