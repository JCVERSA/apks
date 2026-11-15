package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class pg {
    private final List<ig<?>> a;
    private final i3 b;
    private final wo1 c;
    private final pk0 d;
    private final vr0 e;

    /* JADX WARN: Multi-variable type inference failed */
    public pg(List<? extends ig<?>> list, i3 i3Var, wo1 wo1Var, pk0 pk0Var, vr0 vr0Var) {
        y45.j(list, "assets");
        y45.j(i3Var, "adClickHandler");
        y45.j(wo1Var, "renderedTimer");
        y45.j(pk0Var, "impressionEventsObservable");
        this.a = list;
        this.b = i3Var;
        this.c = wo1Var;
        this.d = pk0Var;
        this.e = vr0Var;
    }

    public final og a(dp dpVar, g71 g71Var) {
        y45.j(dpVar, "clickListenerFactory");
        y45.j(g71Var, "viewAdapter");
        return new og(dpVar, this.a, this.b, g71Var, this.c, this.d, this.e);
    }
}
