# Makefile for 16-bit bootloader

# NASM assembler
ASM = nasm

# Source and output
SRC = boot.asm
BIN = boot.bin

# Default target
all: $(BIN)

# Build the binary
$(BIN): $(SRC)
	$(ASM) -f bin $(SRC) -o $(BIN)

# Run in QEMU
run: $(BIN)
	qemu-system-x86_64 -fda $(BIN)

# Clean up
clean:
	rm -f $(BIN)
