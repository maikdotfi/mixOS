# mixOS or just mixos

Just an OS/Kernel built for fun and learning, not serious.

## Roadmap

- [x] use the actual `-kernel` flag with QEMU and OpenSBI
- [] call zig somehow, some C or directly to Zigeti zig? I guess stack etc. needed
  - I think starting with C sounds more fun
- [] make tests actually work before hacking too much
- [] start implementing useful stuff

## Inspiration / Resources

- [Writing an OS in Rust](https://os.phil-opp.com/) - Phil Oppermann
  - one of the more complete resources on writing an OS from scratch
- [Operating System in 1,000 Lines](https://operating-system-in-1000-lines.vercel.app/en/) - Seiya Nuta
  - funny enough I found this after writing the first assembly code for this project
- Uros Popovic blog:
  - [Bare metal programming with RISC-V guide](https://popovicu.com/posts/bare-metal-programming-risc-v/)
  - [RISC-V SBI and the full boot process](https://popovicu.com/posts/risc-v-sbi-and-full-boot-process/)
  - ..and probably some other posts too he has written, but these two helped get started tremendously on RISC-V and QEMU
- [hubris](https://github.com/oxidecomputer/hubris) - Oxide Computer Company
  - cool they actually wrote their own OS and made really interesting decisions while doing so
- [xv6 (risc-v version)](https://github.com/mit-pdos/xv6-riscv)
  - this and the accompanied book are awesome
