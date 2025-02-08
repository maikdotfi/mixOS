MEMORY {
  dram_space (rwx) : ORIGIN = 0x80200000, LENGTH = 128
}

SECTIONS {
  .text : {
    hello.o(.text.kernel)
  } > dram_space
}
