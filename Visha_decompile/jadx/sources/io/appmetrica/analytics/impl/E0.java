package io.appmetrica.analytics.impl;

import android.content.Intent;

public final class E0 implements Runnable {
    public final Intent a;
    public final C2702m1 b;

    public E0(C2702m1 c2702m1, Intent intent) {
        this.b = c2702m1;
        this.a = intent;
    }

    @Override
    public final void run() {
        G7 g7 = this.b.d().b;
        Intent intent = this.a;
        g7.getClass();
        if (intent != null) {
            g7.a(intent.getDataString(), false);
        }
    }
}
