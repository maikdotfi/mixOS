

.PHONY: test
test:
	zig build test --summary all

.PHONY: qemu-bios
qemu-bios:
	zig build && qemu-system-riscv64 -bios zig-out/bin/mixos -machine virt

.PHONY: qemu-bios-exit
qemu-bios-exit:
	zig build && qemu-system-riscv64 -bios zig-out/bin/mixos -machine virt -serial stdio

.PHONY: qemu-kernel-exit
qemu-kernel-exit:
	zig build && qemu-system-riscv64 -kernel zig-out/bin/mixos -machine virt -serial stdio
