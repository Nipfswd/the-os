    title "Byte Swap Functions"
;++
;
; Copyright (c) 2026  Noahssoft Corporation
;
; Module Name:
;
;   movemem.asm
;
; Abstract:
;
;   This module implements functions to perform byte swapping operations.
;
;
; Author:
;
;   Noah Juopperi (noahju) 20-Mar-2026
;
; Environment:
;
;   User or Kernel mode.
;
; Revision History:
;
;--
.486p
    .xlist
include ks386.inc
include callconv.inc            ; calling convention macros
    .list

;
; Alignment for functions in this module
;

CODE_ALIGNMENT macro
    align   16
endm


_TEXT$00    SEGMENT PARA PUBLIC 'CODE'
    ASSUME   DS:FLAT, ES:FLAT, SS:NOTHING, FS:NOTHING, GS:NOTHING

    PAGE
    SUBTTL "RtlUshortByteSwap"
