package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class gh {
    private final List<fn0> a;

    /* JADX WARN: Multi-variable type inference failed */
    public gh(List<? extends fn0> list) {
        y45.j(list, "assetViewConfigurators");
        this.a = list;
    }

    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        Iterator<fn0> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(ob2Var);
        }
    }
}
