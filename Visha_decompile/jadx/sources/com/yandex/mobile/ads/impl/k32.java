package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class k32 implements st {
    private final st a;

    public k32(st stVar) {
        y45.j(stVar, "nativeAdEventListener");
        this.a = stVar;
    }

    @Override
    public final void a(t4 t4Var) {
    }

    @Override
    public final void closeNativeAd() {
        this.a.closeNativeAd();
    }

    @Override
    public final void onAdClicked() {
        this.a.onAdClicked();
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
