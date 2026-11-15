package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class c82 {
    private final bn0 a;
    private final a82 b;
    private final zb2<go0> c;
    private final jo0 d;
    private final io0 e;
    private ln0 f;

    public c82(bn0 bn0Var, a82 a82Var, zb2<go0> zb2Var, ko0 ko0Var, aj1 aj1Var, co0 co0Var, jo0 jo0Var, io0 io0Var) {
        y45.j(bn0Var, "instreamAdViewsHolder");
        y45.j(a82Var, "uiElementBinder");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(ko0Var, "videoAdControlsStateStorage");
        y45.j(aj1Var, "playerVolumeProvider");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(jo0Var, "videoAdControlsStateProvider");
        y45.j(io0Var, "instreamVideoAdControlsStateManager");
        this.a = bn0Var;
        this.b = a82Var;
        this.c = zb2Var;
        this.d = jo0Var;
        this.e = io0Var;
    }

    public final void a() {
        t70 t70VarB = this.a.b();
        if (this.f != null || t70VarB == null) {
            return;
        }
        ln0 ln0VarA = this.d.a(this.c);
        this.b.a(t70VarB, ln0VarA);
        this.f = ln0VarA;
    }

    public final void b() {
        ln0 ln0Var;
        t70 t70VarB = this.a.b();
        if (t70VarB == null || (ln0Var = this.f) == null) {
            return;
        }
        this.e.b(this.c, t70VarB, ln0Var);
        this.f = null;
        this.b.a(t70VarB);
    }

    public final void a(zb2<go0> zb2Var) {
        ln0 ln0Var;
        y45.j(zb2Var, "nextVideo");
        t70 t70VarB = this.a.b();
        if (t70VarB == null || (ln0Var = this.f) == null) {
            return;
        }
        this.e.a(zb2Var, t70VarB, ln0Var);
    }
}
