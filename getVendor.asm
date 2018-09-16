global _start

_start:
cpuid ;getting the cpu vendor
mov eax,4 ;sys_write system call
mov ebx,1 ;stdout file descriptor
int 0x80
mov eax,1 ;sys_exit system call
mov ebx,0 ;exit status is 0
int 0x80