package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vh1 {
    private final Context a;
    private final jm0 b;
    private final gf2 c;
    private final cf2 d;
    private final cn0 e;
    private final ym0 f;
    private final a3 g;

    /* JADX WARN: Illegal instructions before constructor call */
    public vh1(Context context, bv1 bv1Var, jm0 jm0Var, gf2 gf2Var, cf2 cf2Var, cn0 cn0Var, qm0 qm0Var, am0 am0Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, bv1Var, jm0Var, gf2Var, cf2Var, cn0Var, qm0Var, am0Var, new ym0(applicationContext, bv1Var, cn0Var, gf2Var, jm0Var, am0Var), new a3(qm0Var));
    }

    public final v01 a(om0 om0Var) {
        y45.j(om0Var, "instreamAdPlaylist");
        Context applicationContext = this.a.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        z2 z2VarA = this.g.a();
        jm0 jm0Var = this.b;
        ym0 ym0Var = this.f;
        cn0 cn0Var = this.e;
        gf2 gf2Var = this.c;
        return new v01(applicationContext, om0Var, z2VarA, jm0Var, ym0Var, cn0Var, gf2Var, this.d, new nb2(), new gj1(gf2Var, z2VarA));
    }

    public vh1(Context context, bv1 bv1Var, jm0 jm0Var, gf2 gf2Var, cf2 cf2Var, cn0 cn0Var, qm0 qm0Var, am0 am0Var, ym0 ym0Var, a3 a3Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(cf2Var, "videoPlaybackController");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(qm0Var, "instreamAdPlaylistHolder");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(ym0Var, "instreamAdUiElementsManager");
        y45.j(a3Var, "adBreakStatusControllerHolder");
        this.a = context;
        this.b = jm0Var;
        this.c = gf2Var;
        this.d = cf2Var;
        this.e = cn0Var;
        this.f = ym0Var;
        this.g = a3Var;
    }

    public final wy1 a(gt gtVar) {
        y45.j(gtVar, "adBreak");
        Context applicationContext = this.a.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        jm0 jm0Var = this.b;
        ym0 ym0Var = this.f;
        cn0 cn0Var = this.e;
        z2 z2VarA = this.g.a();
        return new wy1(applicationContext, gtVar, jm0Var, ym0Var, cn0Var, z2VarA, new u2(applicationContext, gtVar, jm0Var, ym0Var, cn0Var, z2VarA));
    }
}
