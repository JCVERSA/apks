package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class mf1 implements c10 {
    private final int a;

    public mf1(int i) {
        this.a = i;
    }

    @Override
    public final boolean a(Context context) {
        y45.j(context, "context");
        return this.a == context.getResources().getConfiguration().orientation;
    }
}
