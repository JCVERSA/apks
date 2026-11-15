package com.bytedance.sdk.component.utils;

import java.io.UnsupportedEncodingException;

public class Ym {
    private static final byte[] Sj = Sj("VP8X");

    private static byte[] Sj(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new byte[1];
        }
    }

    public static boolean Sj(byte[] bArr, int i10) {
        try {
            boolean zSj = Sj(bArr, i10 + 12, Sj);
            int i11 = i10 + 20;
            if (bArr.length <= i11) {
                return false;
            }
            boolean z10 = (bArr[i11] & 2) == 2;
            if (zSj && z10) {
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean Sj(byte[] bArr, int i10, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i10 > bArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            if (bArr[i11 + i10] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }
}
