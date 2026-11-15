package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xo0 implements cd2 {
    private final wc2<go0> a;
    private final qd2 b;
    private final ug2 c;

    public xo0(co0 co0Var, vo0 vo0Var, qd2 qd2Var) {
        this(co0Var, vo0Var, qd2Var, new f31());
    }

    @Override
    public final void a(long j, long j2) {
        boolean zA = this.c.a();
        if (this.b.a() != pd2.i) {
            if (zA) {
                if (this.a.isPlayingAd()) {
                    return;
                }
                this.a.resumeAd();
            } else if (this.a.isPlayingAd()) {
                this.a.pauseAd();
            }
        }
    }

    public xo0(co0 co0Var, vo0 vo0Var, qd2 qd2Var, f31 f31Var) {
        y45.j(co0Var, "videoAdPlayer");
        y45.j(vo0Var, "videoViewProvider");
        y45.j(qd2Var, "videoAdStatusController");
        y45.j(f31Var, "mrcVideoAdViewValidatorFactory");
        this.a = co0Var;
        this.b = qd2Var;
        f31Var.getClass();
        this.c = f31.a(vo0Var);
    }
}
