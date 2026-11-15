package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class wh1 {
    private final qm0 a;
    private final vh1 b;
    private wy1 c;
    private v01 d;
    private wy1 e;

    public wh1(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, cf2 cf2Var, am0 am0Var) {
        this(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, cf2Var, am0Var, new qm0(etVar, gf2Var));
    }

    public final x8 a() {
        v01 v01Var = this.d;
        if (v01Var != null) {
            return v01Var;
        }
        v01 v01VarA = this.b.a(this.a.a());
        this.d = v01VarA;
        return v01VarA;
    }

    public final x8 b() {
        wy1 wy1VarA = this.e;
        if (wy1VarA == null) {
            gt gtVarB = this.a.a().b();
            wy1VarA = gtVarB != null ? this.b.a(gtVarB) : null;
            this.e = wy1VarA;
        }
        return wy1VarA;
    }

    public final x8 c() {
        wy1 wy1VarA = this.c;
        if (wy1VarA == null) {
            gt gtVarC = this.a.a().c();
            wy1VarA = gtVarC != null ? this.b.a(gtVarC) : null;
            this.c = wy1VarA;
        }
        return wy1VarA;
    }

    public wh1(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, cf2 cf2Var, am0 am0Var, qm0 qm0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamVideoAd");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(cn0Var, "instreamAdViewHolderProvider");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(cf2Var, "videoPlaybackController");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(qm0Var, "instreamAdPlaylistHolder");
        this.a = qm0Var;
        this.b = new vh1(context, bv1Var, jm0Var, gf2Var, cf2Var, cn0Var, qm0Var, am0Var);
    }
}
