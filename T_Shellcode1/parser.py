import sys
def parse_shellcode(shellcode):
    for i in range(len(shellcode)-1,0,-2):
        #print(f"\\x{shellcode[i-1]}{shellcode[i]}", end="")
        print(f"\\x{shellcode[i-1]}{shellcode[i]}", end="")
parse_shellcode(sys.argv[1])
