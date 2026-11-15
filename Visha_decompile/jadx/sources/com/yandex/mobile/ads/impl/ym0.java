package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ym0 {
    private final Context a;
    private final cn0 b;
    private final d82 c;
    private c82 d;

    public ym0(Context context, bv1 bv1Var, cn0 cn0Var, aj1 aj1Var, jm0 jm0Var, am0 am0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(aj1Var, "playerVolumeProvider");
        y45.j(jm0Var, "playerController");
        y45.j(am0Var, "customUiElementsHolder");
        this.a = context;
        this.b = cn0Var;
        this.c = new d82(bv1Var, aj1Var, jm0Var, am0Var);
    }

    public final void a(gt gtVar, zb2 zb2Var, mg2 mg2Var, nb2 nb2Var, yk1 yk1Var) {
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(nb2Var, "playbackListener");
        y45.j(yk1Var, "imageProvider");
        a();
        bn0 bn0VarA = this.b.a();
        if (bn0VarA != null) {
            d82 d82Var = this.c;
            Context applicationContext = this.a.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            c82 c82VarA = d82Var.a(applicationContext, bn0VarA, gtVar, zb2Var, mg2Var, yk1Var, nb2Var);
            c82VarA.a();
            this.d = c82VarA;
        }
    }

    public final void a() {
        c82 c82Var = this.d;
        if (c82Var != null) {
            c82Var.b();
        }
        this.d = null;
    }

    public final void a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "nextVideo");
        c82 c82Var = this.d;
        if (c82Var != null) {
            c82Var.a(zb2Var);
        }
    }
}
