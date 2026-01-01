🪄 Frieren (フリーレン)

"It’s not that I’m trying to save time. It’s just that 1,000 years is a long time to spend on inefficient code."

Frieren is a minimalist, hand-crafted x86-64 security tool. While most modern programs are bloated with the "magic" of heavy compilers and massive libraries, Frieren is built using the Ancient Spells: Pure Assembly.
🧝 Why "ELF"?

In the world of Linux, an ELF (Executable and Linkable Format) is the soul of a program. Much like the protagonist herself, this project explores the true nature of an ELF:

    Longevity: Written in the foundational language of the machine (Assembly), intended to run as long as the architecture exists.

    Minimalism: By manually constructing the ELF headers, we strip away the "human bloat," leaving only the raw, powerful essence of the code.

    Wisdom: To build an ELF from scratch is to understand the deep history of how Operating Systems breathe.

🔮 The Grimoire (Features)

    Hand-Forged Headers: Unlike programs born from gcc or clang, Frieren’s headers are written byte-by-byte. No linker, no waste.

    Mana Efficiency: The final binary is microscopic (targeted at < 500 bytes). It is a "Tiny ELF" in every sense.

    The Randomness Spell: Taps into the Linux Kernel’s /dev/urandom to manifest 16-character alphanumeric passkeys.

    Zero Dependencies: Requires no standard C library. It speaks directly to the Kernel via System Calls.

📜 The Spellbook (How it's Built)

To manifest this executable, one must use the NASM catalyst:
Bash

# Assemble the logic (The Brain)
nasm -f elf64 brain.asm -o brain.o

# Bind the soul (The Linker)
ld brain.o -o frieren

# Execute the spell
./frieren

⏳ The Journey

    [x] Day 1-3: The Brain. Mastering the flow of randomness and character mapping.

    [ ] Day 4-5: The Elven Heritage. Manually defining the ELF 64-bit headers.

    [ ] Day 6: Optimization. Stripping the binary to its most ancient, tiny form.

"The magic of the journey is not in the destination, but in the bytes we wrote along the way."
