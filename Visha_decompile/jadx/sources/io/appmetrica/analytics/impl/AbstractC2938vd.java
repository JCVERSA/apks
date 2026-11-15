package io.appmetrica.analytics.impl;

import android.content.Context;

public abstract class AbstractC2938vd {
    public static D9 a;

    public static final synchronized D9 a(Context context) {
        D9 d9;
        d9 = a;
        if (d9 == null) {
            d9 = new D9(context, "uuid.dat");
            a = d9;
        }
        return d9;
    }
}
