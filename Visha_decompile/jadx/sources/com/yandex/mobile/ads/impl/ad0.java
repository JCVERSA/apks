package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class ad0 implements t62, a92 {
    private final gs a;
    private Map<String, String> b;
    private boolean c;

    public ad0(gs gsVar) {
        y45.j(gsVar, "contentPresenter");
        this.a = gsVar;
    }

    @Override
    public final void a(Map<String, String> map) {
        this.b = map;
    }

    @Override
    public final void a(boolean z) {
        this.c = z;
        this.a.a(z);
    }

    public final zc0 a() {
        return new zc0(this.c, this.b);
    }
}
