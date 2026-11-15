package com.yandex.mobile.ads.impl;

import android.content.Context;

public final class mo2 {
    private boolean a;

    public final void a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context cannot be null");
        }
        if (this.a) {
            return;
        }
        this.a = true;
        cp2.a().a(context);
        go2.a().a(context);
        io2.a(context);
        ro2.a().a(context);
    }

    public final boolean a() {
        return this.a;
    }
}
