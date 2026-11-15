package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.common.AdTheme;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class oq1 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[AdTheme.values().length];
            try {
                iArr[AdTheme.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdTheme.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static nq1 a(AdTheme adTheme) {
        y45.j(adTheme, "adTheme");
        int i = a.a[adTheme.ordinal()];
        if (i == 1) {
            return nq1.d;
        }
        if (i == 2) {
            return nq1.c;
        }
        throw new NoWhenBranchMatchedException();
    }
}
