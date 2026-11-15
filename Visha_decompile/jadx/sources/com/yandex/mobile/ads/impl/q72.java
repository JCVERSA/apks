package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;

public final class q72 {
    public static long a(int i, int i2, ag1 ag1Var) {
        ag1Var.e(i);
        if (ag1Var.a() < 5) {
            return C.TIME_UNSET;
        }
        int iH = ag1Var.h();
        if ((8388608 & iH) != 0 || ((2096896 & iH) >> 8) != i2 || (iH & 32) == 0 || ag1Var.t() < 7 || ag1Var.a() < 7 || (ag1Var.t() & 16) != 16) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        ag1Var.a(bArr, 0, 6);
        return ((255 & ((long) bArr[4])) >> 7) | ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1);
    }
}
