package com.yandex.mobile.ads.impl;

import java.util.Arrays;

public final class xb0 {
    public static ac0.a a(ag1 ag1Var) {
        ag1Var.f(1);
        int iW = ag1Var.w();
        long jD = ((long) ag1Var.d()) + ((long) iW);
        int i = iW / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jP = ag1Var.p();
            if (jP == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jP;
            jArrCopyOf2[i2] = ag1Var.p();
            ag1Var.f(2);
        }
        ag1Var.f((int) (jD - ((long) ag1Var.d())));
        return new ac0.a(jArrCopyOf, jArrCopyOf2);
    }
}
