package com.yandex.mobile.ads.impl;

import android.view.ContextThemeWrapper;
import com.yandex.div.core.Div2Context;
import com.yandex.div2.DivData;
import defpackage.y45;

public final class j90 extends Div2Context {
    private final e02 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j90(ContextThemeWrapper contextThemeWrapper, defpackage.jh2 jh2Var, e02 e02Var) {
        super(contextThemeWrapper, jh2Var, 0, new sb0(), 4, null);
        y45.j(contextThemeWrapper, "baseContext");
        y45.j(jh2Var, "configuration");
        y45.j(e02Var, "sliderAdsBindingExtensionHandler");
        this.a = e02Var;
    }

    public final void a(DivData divData, b02 b02Var) {
        y45.j(divData, "divData");
        y45.j(b02Var, "nativeAdPrivate");
        this.a.a(divData, b02Var);
    }
}
