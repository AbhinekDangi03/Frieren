Frieren is a systems-level project focused on the manual construction of the Executable and Linkable Format (ELF). By bypassing standard toolchains and linkers, this project demonstrates a deep understanding of the Linux ABI, System Calls, and binary optimization.
🛠 Technical Overview

Most modern binaries are bloated with boilerplate code added by compilers (GCC/Clang) and standard libraries (glibc). Frieren takes the opposite approach:

    Custom ELF Header: The binary entry point and program headers are manually defined in Assembly.

    Direct Kernel Interface: All I/O and entropy collection are handled via raw Linux System Calls (syscall), eliminating the need for a runtime environment.

    Entropy Source: Implements cryptographically secure pseudorandomness by interfacing directly with /dev/urandom.

🚀 Key Specifications
Feature	Implementation
Architecture	x86-64 (Intel/AMD 64-bit)
Format	Manual ELF64 Header
Dependencies	None (Static, zero-library dependency)
Binary Size	< 500 Bytes (Target)
Logic	Alphanumeric Password Generation (16-char)
🏗 Build Process

To maintain the integrity of the manual header construction, the project uses the Netwide Assembler (NASM).
Bash

# Assemble into a flat binary format
nasm -f bin frieren.asm -o frieren

# Set execution permissions
chmod +x frieren

# Execute
./frieren
