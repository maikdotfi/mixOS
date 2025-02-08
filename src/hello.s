	.global _start
	.section .text.kernel

# SiFive Test Constants, found from: https://github.com/michaeljclark/qemu-riscv-tests/blob/master/env/common/test-header.s
.equ TEST_BASE,             0x00100000 # address of the SiFive test device which exists in virt QEMU machine
.equ TEST_PASS,             0x5555
.equ TEST_FAIL,             0x3333

# https://github.com/riscv-non-isa/riscv-sbi-doc/blob/master/src/ext-debug-console.adoc
_start:	li a7, 0x4442434E # SBI debug console extension
	li a6, 0x00 # write function in the extension

	li a0, 5 # length of our string

	lla a1, hello_string # load the address of our string into a1
	li a2, 0 # if we had a really big number as the pointer we need two registers, but now we just set this to 0 because we don't

	ecall # interruption which the SBI catches and then prints to UART

        li      a0, TEST_BASE
        li      a1, TEST_PASS
        sw      a1, 0(a0) # exit

# this code is unreachable rn
loop:	j loop # infinite loop because CPU must do something

	.section .rodata
hello_string:
	.string "hello"

