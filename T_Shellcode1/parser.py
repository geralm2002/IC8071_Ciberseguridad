import sys
def parse_shellcode(shellcode):
    for i in range(0,len(shellcode)-1,2):
        print(f"\\x{shellcode[i]}{shellcode[i+1]}", end="")
parse_shellcode(sys.argv[1])
