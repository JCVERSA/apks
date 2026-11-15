package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.y45;

public final class vi1 {
    private final com.google.android.exoplayer2.a0.b a;
    private com.google.android.exoplayer2.a0 b;
    private boolean c;

    public vi1() {
        com.google.android.exoplayer2.a0.b bVar = new com.google.android.exoplayer2.a0.b();
        com.google.android.exoplayer2.a0 a0Var = com.google.android.exoplayer2.a0.b;
        y45.i(a0Var, "EMPTY");
        this(bVar, a0Var, false);
    }

    public final com.google.android.exoplayer2.a0.b a() {
        return this.a;
    }

    public final com.google.android.exoplayer2.a0 b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(com.google.android.exoplayer2.a0 a0Var) {
        y45.j(a0Var, "<set-?>");
        this.b = a0Var;
    }

    public vi1(com.google.android.exoplayer2.a0.b bVar, com.google.android.exoplayer2.a0 a0Var, boolean z) {
        y45.j(bVar, TypedValues.CycleType.S_WAVE_PERIOD);
        y45.j(a0Var, "timeline");
        this.a = bVar;
        this.b = a0Var;
        this.c = z;
    }
}
