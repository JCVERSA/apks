package com.yandex.mobile.ads.impl;

import android.view.View;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class fe2 implements View.OnClickListener {
    private final vr0 a;
    private final cp b;
    private final uu c;

    public fe2(vr0 vr0Var, cp cpVar, uu uuVar) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(cpVar, "clickListenerCreator");
        this.a = vr0Var;
        this.b = cpVar;
        this.c = uuVar;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "view");
        this.b.a(this.c != null ? new vr0(this.a.a(), this.a.c(), this.a.d(), this.c.c(), this.a.b()) : this.a).onClick(view);
    }
}
