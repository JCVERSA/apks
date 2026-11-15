package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;

public final class C2 implements Runnable {
    public final Context a;
    public final Intent b;
    public final D2 c;

    public C2(D2 d2, Context context, Intent intent) {
        this.c = d2;
        this.a = context;
        this.b = intent;
    }

    @Override
    public final void run() {
        this.c.a.consume(this.a, this.b);
    }
}
