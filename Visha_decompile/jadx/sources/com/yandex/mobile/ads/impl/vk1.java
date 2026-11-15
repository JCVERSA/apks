package com.yandex.mobile.ads.impl;

import com.yandex.div.core.view2.Div2View;
import defpackage.y45;

public final class vk1 {
    private final b30 a;
    private final Div2View b;
    private final uo c;
    private final v20 d;

    public vk1(b30 b30Var, Div2View div2View, uo uoVar, v20 v20Var) {
        y45.j(b30Var, "divKitDesign");
        y45.j(div2View, "preloadedDivView");
        y45.j(uoVar, "clickConnector");
        y45.j(v20Var, "clickHandler");
        this.a = b30Var;
        this.b = div2View;
        this.c = uoVar;
        this.d = v20Var;
    }

    public final uo a() {
        return this.c;
    }

    public final v20 b() {
        return this.d;
    }

    public final b30 c() {
        return this.a;
    }

    public final Div2View d() {
        return this.b;
    }
}
