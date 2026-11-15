package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class h21 implements zo {
    private final vr0 a;
    private final cp b;

    public h21(vr0 vr0Var, cp cpVar) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(cpVar, "clickListenerCreator");
        this.a = vr0Var;
        this.b = cpVar;
    }

    @Override
    public final void a(w21 w21Var, String str) {
        y45.j(w21Var, "view");
        y45.j(str, "url");
        this.b.a(new vr0(this.a.a(), this.a.c(), this.a.d(), str, this.a.b())).onClick(w21Var);
    }
}
