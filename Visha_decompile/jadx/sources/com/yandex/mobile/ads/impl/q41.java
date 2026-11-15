package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class q41 {
    private final bv1 a;

    public q41(bv1 bv1Var) {
        y45.j(bv1Var, "mSdkEnvironmentModule");
        this.a = bv1Var;
    }

    public final kl a(Context context, s41 s41Var, fc1 fc1Var, dc1 dc1Var, s51 s51Var, gc0 gc0Var, g41 g41Var, s9 s9Var) {
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(fc1Var, "nativeVisualBlock");
        y45.j(dc1Var, "viewRenderer");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(gc0Var, "noticeForceTrackingController");
        y45.j(g41Var, "nativeAd");
        y45.j(s9Var, "adStructureType");
        int i = w71.c;
        w71 w71VarA = w71.a.a();
        o41 o41Var = new o41(fc1Var.b(), w71VarA);
        return new kl(s41Var, new f71(context, o41Var, s41Var.b()), fc1Var, dc1Var, s51Var, new k5(gc0Var), new m71(context, o41Var, w71VarA), this.a, g41Var, s9Var);
    }
}
