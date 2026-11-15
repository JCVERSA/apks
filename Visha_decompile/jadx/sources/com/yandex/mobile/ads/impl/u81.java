package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import defpackage.y45;

public final class u81 implements st {
    private final j1 a;
    private final vd0 b;

    public u81(v1 v1Var, vd0 vd0Var) {
        y45.j(v1Var, "adActivityListener");
        y45.j(vd0Var, "fullscreenAdtuneCloseEnabledProvider");
        this.a = v1Var;
        this.b = vd0Var;
    }

    @Override
    public final void a(t4 t4Var) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("impression_data_key", t4Var);
        this.a.a(16, bundle);
    }

    @Override
    public final void closeNativeAd() {
        if (this.b.a()) {
            this.a.a();
        }
    }

    @Override
    public final void onAdClicked() {
    }

    @Override
    public final void onLeftApplication() {
        this.a.a(17, null);
    }

    @Override
    public final void onReturnedToApplication() {
        this.a.a(18, null);
    }
}
