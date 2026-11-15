package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ji1 {
    private final b70 a;

    public ji1(b70 b70Var) {
        y45.j(b70Var, "playerProvider");
        this.a = b70Var;
    }

    public final void a() {
        com.google.android.exoplayer2.t tVarA = this.a.a();
        if (tVarA == null) {
            return;
        }
        tVarA.setPlayWhenReady(false);
    }

    public final void b() {
        com.google.android.exoplayer2.t tVarA = this.a.a();
        if (tVarA == null) {
            return;
        }
        tVarA.setPlayWhenReady(true);
    }
}
