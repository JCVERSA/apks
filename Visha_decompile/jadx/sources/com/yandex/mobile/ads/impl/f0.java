package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;
import java.util.List;

public final class f0 {
    private final a0 a;

    public f0(o3 o3Var, o8 o8Var, ep epVar, s91 s91Var, g71 g71Var, p51 p51Var, a0 a0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(epVar, "reporter");
        y45.j(s91Var, "nativeOpenUrlHandlerCreator");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(a0Var, "actionHandlerProvider");
        this.a = a0Var;
    }

    public final gf0 a(View view, List<? extends x> list) {
        y45.j(view, "view");
        gf0 gf0Var = new gf0(list == null || list.isEmpty());
        if (list != null) {
            for (x xVar : list) {
                a0 a0Var = this.a;
                Context context = view.getContext();
                y45.i(context, "getContext(...)");
                z<? extends x> zVarA = a0Var.a(context, xVar);
                if (zVarA == null) {
                    zVarA = null;
                }
                if (zVarA != null) {
                    gf0Var = new gf0(gf0Var.a() || zVarA.a(view, xVar).a());
                }
            }
        }
        return gf0Var;
    }
}
