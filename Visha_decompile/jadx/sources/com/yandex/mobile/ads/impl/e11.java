package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class e11 {
    private final Context a;

    public e11(Context context) {
        y45.j(context, "context");
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.a = applicationContext;
    }

    public final d11 a(SSLSocketFactory sSLSocketFactory) {
        Context context = this.a;
        return new d11(context, sSLSocketFactory, new c(context, sSLSocketFactory), new tn1(), d.b(context), new yc1(), new ki0());
    }
}
