package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.atomic.AtomicBoolean;

public final class lt0 {
    private final y42 a;
    private final Context b;
    private final AtomicBoolean c;

    public lt0(Context context) {
        y45.j(context, "context");
        this.a = new y42();
        this.b = context.getApplicationContext();
        this.c = new AtomicBoolean();
    }

    public final void a() {
        if (pa.a(this.b)) {
            this.a.getClass();
            if (y42.a() || this.c.getAndSet(true)) {
                return;
            }
            hp0.c("SDK API usage from a background thread detected. Please, use SDK API only from the main thread.", new Object[0]);
        }
    }
}
