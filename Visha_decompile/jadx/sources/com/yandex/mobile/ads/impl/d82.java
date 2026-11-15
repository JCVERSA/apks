package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class d82 {
    private final aj1 a;
    private final jm0 b;
    private final b82 c;
    private final ko0 d;

    public d82(bv1 bv1Var, aj1 aj1Var, jm0 jm0Var, am0 am0Var) {
        this(bv1Var, aj1Var, jm0Var, am0Var, new b82(bv1Var, am0Var), new ko0());
    }

    public final c82 a(Context context, bn0 bn0Var, gt gtVar, zb2 zb2Var, mg2 mg2Var, yk1 yk1Var, nb2 nb2Var) {
        y45.j(context, "context");
        y45.j(bn0Var, "viewHolder");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(yk1Var, "imageProvider");
        y45.j(nb2Var, "playbackListener");
        co0 co0Var = new co0((go0) zb2Var.d(), this.b);
        a82 a82VarA = this.c.a(context, gtVar, zb2Var, co0Var, mg2Var, yk1Var, nb2Var);
        ko0 ko0Var = this.d;
        aj1 aj1Var = this.a;
        return new c82(bn0Var, a82VarA, zb2Var, ko0Var, aj1Var, co0Var, new jo0(ko0Var, aj1Var), new io0(ko0Var, co0Var));
    }

    public d82(bv1 bv1Var, aj1 aj1Var, jm0 jm0Var, am0 am0Var, b82 b82Var, ko0 ko0Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(aj1Var, "playerVolumeProvider");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(b82Var, "uiElementBinderProvider");
        y45.j(ko0Var, "videoAdOptionsStorage");
        this.a = aj1Var;
        this.b = jm0Var;
        this.c = b82Var;
        this.d = ko0Var;
    }
}
