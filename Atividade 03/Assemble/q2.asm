.LC0:
        .string "Informe x:"
.LC1:
        .string "%f"
.LC2:
        .string "Informe y:"
.LC3:
        .string "%.1f"
.LC4:
        .string "numeros iguais"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-4]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        lea     rax, [rbp-8]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        movss   xmm0, DWORD PTR [rbp-4]
        movss   xmm1, DWORD PTR [rbp-8]
        comiss  xmm0, xmm1
        jbe     .L10
        movss   xmm0, DWORD PTR [rbp-4]
        pxor    xmm2, xmm2
        cvtss2sd        xmm2, xmm0
        movq    rax, xmm2
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        jmp     .L4
.L10:
        movss   xmm0, DWORD PTR [rbp-8]
        movss   xmm1, DWORD PTR [rbp-4]
        comiss  xmm0, xmm1
        jbe     .L11
        movss   xmm0, DWORD PTR [rbp-8]
        pxor    xmm3, xmm3
        cvtss2sd        xmm3, xmm0
        movq    rax, xmm3
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        jmp     .L4
.L11:
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
.L4:
        mov     eax, 0
        leave
        ret