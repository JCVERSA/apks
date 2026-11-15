package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;

public final class f11 {
    private final Object a = new Object();
    private final ArrayList b = new ArrayList();

    public final void a() {
        ArrayList<hl0> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList(this.b);
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
        for (hl0 hl0Var : arrayList) {
            if (hl0Var != null) {
                hl0Var.a();
            }
        }
    }

    public final void a(hl0 hl0Var) {
        y45.j(hl0Var, "initializationObserver");
        synchronized (this.a) {
            this.b.add(hl0Var);
        }
    }
}
