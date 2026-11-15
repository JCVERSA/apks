package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class pv {
    private final Context a;

    public pv(Context context) {
        y45.j(context, "context");
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.a = applicationContext;
    }

    public final boolean a() {
        return (this.a.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
