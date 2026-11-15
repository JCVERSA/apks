package com.alibaba.fastjson.asm;

import org.mvel2.ast.ASTNode;

public class f {

    int f17493a;

    int f17494b;

    private int f17495c;

    private int[] f17496d;

    private void a(int i10, int i11, int i12) {
        if (this.f17496d == null) {
            this.f17496d = new int[6];
        }
        int i13 = this.f17495c;
        int[] iArr = this.f17496d;
        if (i13 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f17496d = iArr2;
        }
        int[] iArr3 = this.f17496d;
        int i14 = this.f17495c;
        int i15 = i14 + 1;
        this.f17495c = i15;
        iArr3[i14] = i10;
        this.f17495c = i14 + 2;
        iArr3[i15] = i11 | i12;
    }

    void b(i iVar, a aVar, int i10, boolean z10) {
        if ((this.f17493a & 2) != 0) {
            if (z10) {
                aVar.f(this.f17494b - i10);
                return;
            } else {
                aVar.g(this.f17494b - i10);
                return;
            }
        }
        if (z10) {
            a(i10, aVar.f17455b, ASTNode.DISCARD);
            aVar.f(-1);
        } else {
            a(i10, aVar.f17455b, ASTNode.DEOP);
            aVar.g(-1);
        }
    }

    void c(i iVar, int i10, byte[] bArr) {
        this.f17493a |= 2;
        this.f17494b = i10;
        int i11 = 0;
        while (i11 < this.f17495c) {
            int[] iArr = this.f17496d;
            int i12 = i11 + 1;
            int i13 = iArr[i11];
            i11 += 2;
            int i14 = iArr[i12];
            int i15 = 268435455 & i14;
            int i16 = i10 - i13;
            if ((i14 & (-268435456)) == 268435456) {
                bArr[i15] = (byte) (i16 >>> 8);
                bArr[i15 + 1] = (byte) i16;
            } else {
                bArr[i15] = (byte) (i16 >>> 24);
                bArr[i15 + 1] = (byte) (i16 >>> 16);
                bArr[i15 + 2] = (byte) (i16 >>> 8);
                bArr[i15 + 3] = (byte) i16;
            }
        }
    }
}
