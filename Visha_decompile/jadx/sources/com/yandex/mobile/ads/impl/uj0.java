package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class uj0 {
    private final Context a;

    public uj0(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
    }

    public final String a(int i, int i2) {
        Context context = this.a;
        y45.i(context, "context");
        int iA = wh2.a(context, i);
        Context context2 = this.a;
        y45.i(context2, "context");
        int iA2 = wh2.a(context2, i2);
        sp0.a(new Object[0]);
        if (iA >= 320 || iA2 >= 240) {
            return "large";
        }
        return (iA >= 160 || iA2 >= 160) ? "medium" : "small";
    }
}
