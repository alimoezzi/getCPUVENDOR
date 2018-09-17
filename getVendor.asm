global _start

_start:
mov eax,0 ;EAX=0: Get vendor ID
cpuid ;getting the cpu vendor
mov ebp,esp
; sub esp,13
push byte 0xa; mov [esp+12],byte 0xa;new line
push ecx; mov [esp+8],ecx ; esp+8 is full untill esp+12
push edx; mov [esp+4],edx
push ebx; mov [esp],ebx
mov eax,4 ;sys_write system call
mov ebx,1 ;stdout file descriptor
mov ecx,esp ; the pointer to the first char
mov edx,13 ; length of the string
int 0x80
mov esp,ebp ;closing the stack
mov eax,1 ;sys_exit system call
mov ebx,0 ;exit status is 0
int 0x80