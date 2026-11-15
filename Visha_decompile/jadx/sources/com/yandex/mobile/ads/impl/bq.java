package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import defpackage.y45;

public final class bq implements eq {
    private final Dialog a;
    private final zr b;

    public bq(Dialog dialog, zr zrVar) {
        y45.j(dialog, "dialog");
        y45.j(zrVar, "contentCloseListener");
        this.a = dialog;
        this.b = zrVar;
    }

    @Override
    public final void a() {
        n10.a(this.a);
        this.b.f();
    }

    @Override
    public final void b() {
        n10.a(this.a);
    }
}
