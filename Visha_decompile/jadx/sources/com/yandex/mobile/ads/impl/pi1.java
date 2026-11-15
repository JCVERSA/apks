package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class pi1 implements sj1 {
    private final com.google.android.exoplayer2.t a;
    private final vi1 b;

    public pi1(com.google.android.exoplayer2.t tVar, vi1 vi1Var) {
        y45.j(tVar, "player");
        y45.j(vi1Var, "playerStateHolder");
        this.a = tVar;
        this.b = vi1Var;
    }

    @Override
    public final long a() {
        com.google.android.exoplayer2.a0 a0VarB = this.b.b();
        return this.a.getContentPosition() - (!a0VarB.u() ? a0VarB.j(0, this.b.a()).p() : 0L);
    }
}
