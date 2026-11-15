package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class b81 implements st {
    private final aj a;

    public b81(aj ajVar) {
        y45.j(ajVar, "adViewController");
        this.a = ajVar;
    }

    @Override
    public final void a(t4 t4Var) {
        this.a.a(t4Var);
    }

    @Override
    public final void closeNativeAd() {
        this.a.A();
    }

    @Override
    public final void onAdClicked() {
    }

    @Override
    public final void onLeftApplication() {
        this.a.onLeftApplication();
    }

    @Override
    public final void onReturnedToApplication() {
        this.a.onReturnedToApplication();
    }
}
