package io.appmetrica.analytics.impl;

import android.content.Intent;

public final class H1 implements O1 {
    public final I1 a;

    public H1(I1 i1) {
        this.a = i1;
    }

    @Override
    public final void a(Intent intent) {
        this.a.getClass();
        C2910ua.E.u().a(AbstractC2712mb.e(intent.getStringExtra("screen_size")));
    }
}
