package com.google.common.primitives;

import com.google.common.base.m;

public abstract class a {
    public static int a(byte[] bArr, byte[] bArr2) {
        m.p(bArr, "array");
        m.p(bArr2, "target");
        if (bArr2.length == 0) {
            return 0;
        }
        for (int i10 = 0; i10 < (bArr.length - bArr2.length) + 1; i10++) {
            for (int i11 = 0; i11 < bArr2.length; i11++) {
                if (bArr[i10 + i11] != bArr2[i11]) {
                }
            }
            return i10;
        }
        return -1;
    }
}
