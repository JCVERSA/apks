package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;

public final class y71 {
    public static Float a(String str) {
        if (str != null) {
            try {
                return Float.valueOf(Float.parseFloat(str));
            } catch (NumberFormatException unused) {
                hz9 hz9Var = hz9.a;
                y45.i(String.format("Could not parse rating value. Rating value is %s", Arrays.copyOf(new Object[]{str}, 1)), "format(...)");
                int i = sp0.b;
                y45.j(new Object[0], "args");
            }
        }
        return null;
    }
}
