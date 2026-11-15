package com.yandex.mobile.ads.impl;

import kotlin.NoWhenBranchMatchedException;

public final class mz1 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[wz1.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int i = wz1.d;
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static lz1 a(m6 m6Var) {
        n6 n6VarB;
        wz1 wz1VarC = (m6Var == null || (n6VarB = m6Var.b()) == null) ? null : n6VarB.c();
        int i = wz1VarC == null ? -1 : a.a[wz1VarC.ordinal()];
        if (i != -1) {
            if (i == 1) {
                return new ji2();
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return new o00();
    }
}
