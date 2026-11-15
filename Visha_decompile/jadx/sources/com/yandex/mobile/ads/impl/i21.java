package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class i21 implements ap {
    private final w21 a;

    public i21(w21 w21Var) {
        y45.j(w21Var, "mraidWebView");
        this.a = w21Var;
    }

    @Override
    public final void a(vr0 vr0Var, cp cpVar) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(cpVar, "clickListenerCreator");
        this.a.setClickListener(new h21(vr0Var, cpVar));
    }
}
