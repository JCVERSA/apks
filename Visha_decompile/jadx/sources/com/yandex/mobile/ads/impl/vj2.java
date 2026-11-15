package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.vj2;
import defpackage.y45;
import java.util.Map;

public final class vj2 {
    private final yf1 a;
    private final dz1 b;

    public vj2(yf1 yf1Var) {
        y45.j(yf1Var, "parentHtmlWebView");
        this.a = yf1Var;
        this.b = new dz1();
    }

    public final void a(final Map<String, String> map) {
        y45.j(map, "trackingParameters");
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                vj2.a(this.b, map);
            }
        });
    }

    public static final void a(vj2 vj2Var, Map map) {
        y45.j(vj2Var, "this$0");
        y45.j(map, "$trackingParameters");
        vj2Var.a.setVisibility(0);
        sp0.d(new Object[0]);
        dh0 dh0VarJ = vj2Var.a.j();
        if (dh0VarJ != null) {
            dh0VarJ.a(vj2Var.a, map);
        }
    }
}
