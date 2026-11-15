package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;

public final class ro2 {

    @SuppressLint({"StaticFieldLeak"})
    private static ro2 b = new ro2();
    private Context a;

    private ro2() {
    }

    public static ro2 a() {
        return b;
    }

    public final Context b() {
        return this.a;
    }

    public final void a(Context context) {
        this.a = context != null ? context.getApplicationContext() : null;
    }
}
