package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class o21 extends x21 implements gd0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o21(pd0 pd0Var, hd0 hd0Var, ld0 ld0Var, xc0 xc0Var, ld0 ld0Var2, x21.a aVar, m21 m21Var) {
        super(pd0Var, hd0Var, aVar, m21Var);
        y45.j(pd0Var, "parentHtmlWebView");
        y45.j(hd0Var, "htmlWebViewListener");
        y45.j(ld0Var, "mobileAdsSchemeRewardListener");
        y45.j(xc0Var, "onCloseButtonListener");
        y45.j(ld0Var2, "impressionListener");
        y45.j(aVar, "htmlWebViewMraidListener");
        y45.j(m21Var, "mraidController");
        m21Var.a(xc0Var);
        m21Var.a((s11) ld0Var);
        m21Var.a((r11) ld0Var2);
    }

    @Override
    public final void a() {
        b().b();
    }
}
