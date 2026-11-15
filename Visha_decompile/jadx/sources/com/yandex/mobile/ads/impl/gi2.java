package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gi2 implements cd2 {
    private final wc2<?> a;
    private final td2 b;

    public gi2(ua1 ua1Var, cc1 cc1Var) {
        this(ua1Var, cc1Var, new f31(), f31.a(cc1Var));
    }

    @Override
    public final void a(long j, long j2) {
        if (this.b.a()) {
            if (this.a.isPlayingAd()) {
                return;
            }
            this.a.resumeAd();
        } else if (this.a.isPlayingAd()) {
            this.a.pauseAd();
        }
    }

    public gi2(ua1 ua1Var, cc1 cc1Var, f31 f31Var, td2 td2Var) {
        y45.j(ua1Var, "videoAdPlayer");
        y45.j(cc1Var, "videoViewProvider");
        y45.j(f31Var, "mrcVideoAdViewValidatorFactory");
        y45.j(td2Var, "videoAdVisibilityValidator");
        this.a = ua1Var;
        this.b = td2Var;
    }
}
