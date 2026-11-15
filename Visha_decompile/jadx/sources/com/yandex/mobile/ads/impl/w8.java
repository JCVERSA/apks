package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class w8 {
    private final lo0 a;
    private final al1 b;
    private final wh1 c;
    private final v8 d;
    private u8 e;
    private u8 f;
    private u8 g;

    public w8(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, cf2 cf2Var, lo0 lo0Var, am0 am0Var) {
        this(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, cf2Var, lo0Var, am0Var, new al1(gf2Var), new wh1(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, cf2Var, am0Var), new v8());
    }

    private final u8 a(x8 x8Var) {
        v8 v8Var = this.d;
        a9 a9Var = new a9();
        nb2 nb2Var = new nb2();
        v8Var.getClass();
        y45.j(x8Var, "adSectionPlaybackController");
        y45.j(a9Var, "adSectionStatusController");
        y45.j(nb2Var, "adCreativePlaybackProxyListener");
        u8 u8Var = new u8(x8Var, a9Var, nb2Var);
        u8Var.a(this.a);
        return u8Var;
    }

    public final u8 b() {
        x8 x8VarB;
        if (this.g == null && (x8VarB = this.c.b()) != null) {
            this.g = a(x8VarB);
        }
        return this.g;
    }

    public final u8 c() {
        x8 x8VarC;
        if (this.e == null && this.b.a() && (x8VarC = this.c.c()) != null) {
            this.e = a(x8VarC);
        }
        return this.e;
    }

    public w8(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, cf2 cf2Var, lo0 lo0Var, am0 am0Var, al1 al1Var, wh1 wh1Var, v8 v8Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamVideoAd");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(cn0Var, "instreamAdViewHolderProvider");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(cf2Var, "videoPlaybackController");
        y45.j(lo0Var, "adCreativePlaybackListener");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(al1Var, "prerollVideoPositionStartValidator");
        y45.j(wh1Var, "playbackControllerHolder");
        y45.j(v8Var, "adSectionControllerFactory");
        this.a = lo0Var;
        this.b = al1Var;
        this.c = wh1Var;
        this.d = v8Var;
    }

    public final u8 a() {
        u8 u8Var = this.f;
        if (u8Var != null) {
            return u8Var;
        }
        u8 u8VarA = a(this.c.a());
        this.f = u8VarA;
        return u8VarA;
    }
}
