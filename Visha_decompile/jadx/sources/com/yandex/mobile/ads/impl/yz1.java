package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class yz1 {
    private final bv1 a;
    private final ha b;

    public yz1(bv1 bv1Var) {
        this(bv1Var, new ha());
    }

    public final kl a(Context context, s41 s41Var, j81 j81Var, s51 s51Var, gc0 gc0Var) {
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(j81Var, "nativeCompositeAd");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(gc0Var, "noticeForceTrackingController");
        fc1 fc1VarA = this.b.a(s41Var);
        int i = w71.c;
        w71 w71VarA = w71.a.a();
        xz1 xz1Var = new xz1(fc1VarA.b(), w71VarA);
        int i2 = pw1.l;
        return new kl(s41Var, new c02(context, j81Var, xz1Var, pw1.a.a(), s41Var.b()), fc1VarA, new d02(fc1VarA.b()), s51Var, new ga(gc0Var), new m71(context, xz1Var, w71VarA), this.a, null, s9.c);
    }

    public yz1(bv1 bv1Var, ha haVar) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(haVar, "adUnitNativeVisualBlockCreator");
        this.a = bv1Var;
        this.b = haVar;
    }
}
