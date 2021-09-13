// Code generated by command: go run gen.go -avx512 -out ../accum_vector_avx512_amd64.s -pkg xxh3. DO NOT EDIT.

#include "textflag.h"

DATA prime_avx512<>+0(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+8(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+16(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+24(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+32(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+40(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+48(SB)/8, $0x000000009e3779b1
DATA prime_avx512<>+56(SB)/8, $0x000000009e3779b1
GLOBL prime_avx512<>(SB), RODATA|NOPTR, $64

// func accumAVX512(acc *[8]uint64, data *byte, key *byte, len uint64)
// Requires: AVX, AVX512F, MMX+
TEXT ·accumAVX512(SB), NOSPLIT, $0-32
	MOVQ      acc+0(FP), AX
	MOVQ      data+8(FP), CX
	MOVQ      key+16(FP), DX
	MOVQ      key+16(FP), BX
	MOVQ      len+24(FP), BP
	VMOVDQU64 (DX), Z2
	VMOVDQU64 8(DX), Z3
	VMOVDQU64 16(DX), Z4
	VMOVDQU64 24(DX), Z5
	VMOVDQU64 32(DX), Z6
	VMOVDQU64 40(DX), Z7
	VMOVDQU64 48(DX), Z8
	VMOVDQU64 56(DX), Z9
	VMOVDQU64 64(DX), Z10
	VMOVDQU64 72(DX), Z11
	VMOVDQU64 80(DX), Z12
	VMOVDQU64 88(DX), Z13
	VMOVDQU64 96(DX), Z14
	VMOVDQU64 104(DX), Z15
	VMOVDQU64 112(DX), Z16
	VMOVDQU64 120(DX), Z17
	VMOVDQU64 128(DX), Z18
	VMOVDQU64 (AX), Z1
	VMOVDQU64 prime_avx512<>+0(SB), Z0
	VMOVDQU64 121(DX), Z19

accum_large:
	CMPQ       BP, $0x00000400
	JLE        accum
	VMOVDQU64  (CX), Z20
	PREFETCHT0 1024(CX)
	VPXORD     Z2, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  64(CX), Z20
	PREFETCHT0 1088(CX)
	VPXORD     Z3, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  128(CX), Z20
	PREFETCHT0 1152(CX)
	VPXORD     Z4, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  192(CX), Z20
	PREFETCHT0 1216(CX)
	VPXORD     Z5, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  256(CX), Z20
	PREFETCHT0 1280(CX)
	VPXORD     Z6, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  320(CX), Z20
	PREFETCHT0 1344(CX)
	VPXORD     Z7, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  384(CX), Z20
	PREFETCHT0 1408(CX)
	VPXORD     Z8, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  448(CX), Z20
	PREFETCHT0 1472(CX)
	VPXORD     Z9, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  512(CX), Z20
	PREFETCHT0 1536(CX)
	VPXORD     Z10, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  576(CX), Z20
	PREFETCHT0 1600(CX)
	VPXORD     Z11, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  640(CX), Z20
	PREFETCHT0 1664(CX)
	VPXORD     Z12, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  704(CX), Z20
	PREFETCHT0 1728(CX)
	VPXORD     Z13, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  768(CX), Z20
	PREFETCHT0 1792(CX)
	VPXORD     Z14, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  832(CX), Z20
	PREFETCHT0 1856(CX)
	VPXORD     Z15, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  896(CX), Z20
	PREFETCHT0 1920(CX)
	VPXORD     Z16, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	VMOVDQU64  960(CX), Z20
	PREFETCHT0 1984(CX)
	VPXORD     Z17, Z20, Z21
	VPSHUFD    $0x31, Z21, Z22
	VPMULUDQ   Z21, Z22, Z21
	VPSHUFD    $0x4e, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	VPADDQ     Z1, Z21, Z1
	ADDQ       $0x00000400, CX
	SUBQ       $0x00000400, BP
	VPSRLQ     $0x2f, Z1, Z20
	VPTERNLOGD $0x96, Z1, Z18, Z20
	VPMULUDQ   Z0, Z20, Z1
	VPSHUFD    $0xf5, Z20, Z20
	VPMULUDQ   Z0, Z20, Z20
	VPSLLQ     $0x20, Z20, Z20
	VPADDQ     Z1, Z20, Z1
	JMP        accum_large

accum:
	CMPQ      BP, $0x40
	JLE       finalize
	VMOVDQU64 (CX), Z0
	VPXORD    Z2, Z0, Z3
	VPSHUFD   $0x31, Z3, Z4
	VPMULUDQ  Z3, Z4, Z3
	VPSHUFD   $0x4e, Z0, Z0
	VPADDQ    Z1, Z0, Z1
	VPADDQ    Z1, Z3, Z1
	ADDQ      $0x00000040, CX
	SUBQ      $0x00000040, BP
	ADDQ      $0x00000008, BX
	JMP       accum

finalize:
	CMPQ      BP, $0x00
	JE        return
	SUBQ      $0x40, CX
	ADDQ      BP, CX
	VMOVDQU64 (CX), Z0
	VPXORD    Z19, Z0, Z2
	VPSHUFD   $0x31, Z2, Z3
	VPMULUDQ  Z2, Z3, Z2
	VPSHUFD   $0x4e, Z0, Z0
	VPADDQ    Z1, Z0, Z1
	VPADDQ    Z1, Z2, Z1

return:
	VMOVDQU64 Z1, (AX)
	VZEROUPPER
	RET
