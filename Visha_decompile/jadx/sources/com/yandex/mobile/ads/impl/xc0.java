package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class xc0 implements ze1 {
    static final af5[] c = {xq8.f(new MutablePropertyReference1Impl(xc0.class, "contentCloseListener", "getContentCloseListener()Lcom/monetization/ads/fullscreen/content/ContentCloseListener;", 0))};
    private a92 a;
    private final go1 b = ho1.a();

    @Override
    public final void a(boolean z) {
        a92 a92Var = this.a;
        if (a92Var != null) {
            a92Var.a(z);
        }
    }

    @Override
    public final void c() {
        zr zrVar = (zr) this.b.getValue(this, c[0]);
        if (zrVar != null) {
            zrVar.f();
        }
    }

    public final void a(zr zrVar) {
        this.b.setValue(this, c[0], zrVar);
    }

    public final void a(ad0 ad0Var) {
        y45.j(ad0Var, "useCustomCloseListener");
        this.a = ad0Var;
    }
}
