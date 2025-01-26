	.global _start
	.section .text.bios

# SiFive Test Constants, found from: https://github.com/michaeljclark/qemu-riscv-tests/blob/master/env/common/test-header.s
.equ TEST_BASE,             0x00100000 # address of the SiFive test device which exists in virt QEMU machine
.equ TEST_PASS,             0x5555
.equ TEST_FAIL,             0x3333

_start:	li a1, 0x10000000 # store address of serial port in a1 register

	addi a0, x0, 0x68 # 'h' to a0 register
	sb a0, (a1) # store byte from a0 into address stored in a1

	addi a0, x0, 0x65 # 'e'
	sb a0, (a1) # write to serial

	addi a0, x0, 0x6C # 'l'
	sb a0, (a1)
	sb a0, (a1)

	addi a0, x0, 0x6F # 'o'
	sb a0, (a1)

        li      a0, TEST_BASE
        li      a1, TEST_PASS
        sw      a1, 0(a0) # exit

# this code is unreachable rn
loop:	j loop # infinite loop because CPU must do something

# this would continue writing 'hello' to the serial port
#loop:	j _start
