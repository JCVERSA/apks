package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class gj1 {
    private final gf2 a;
    private final z2 b;

    public gj1(gf2 gf2Var, z2 z2Var) {
        y45.j(gf2Var, "videoPlayerController");
        y45.j(z2Var, "adBreakStatusController");
        this.a = gf2Var;
        this.b = z2Var;
    }

    public final fj1 a(om0 om0Var, hj1 hj1Var) {
        y45.j(om0Var, "instreamAdPlaylist");
        y45.j(hj1Var, "listener");
        rf2 rf2Var = new rf2(this.a, new Handler(Looper.getMainLooper()));
        ot1 ot1Var = new ot1(om0Var);
        return new fj1(rf2Var, new yn1(ot1Var, this.b), new xn1(ot1Var, this.b), hj1Var);
    }
}
