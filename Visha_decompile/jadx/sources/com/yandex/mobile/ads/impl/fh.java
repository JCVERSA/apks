package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.ky5;
import defpackage.y45;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class fh {
    private final List<ig<?>> a;
    private g71 b;

    /* JADX WARN: Multi-variable type inference failed */
    public fh(List<? extends ig<?>> list) {
        y45.j(list, "assets");
        this.a = list;
    }

    public final HashMap a() {
        jg<?> jgVarA;
        hx0.a aVarF;
        String strA;
        HashMap map = new HashMap();
        Iterator<ig<?>> it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ig<?> next = it.next();
            String strB = next.b();
            g71 g71Var = this.b;
            if (g71Var != null && (jgVarA = g71Var.a(next)) != null && jgVarA.b()) {
                HashMap map2 = new HashMap();
                lh2 lh2VarC = jgVarA.c();
                if (lh2VarC != null) {
                    map2.put("width", Integer.valueOf(lh2VarC.b()));
                    map2.put("height", Integer.valueOf(lh2VarC.a()));
                }
                zu0 zu0Var = jgVarA instanceof zu0 ? (zu0) jgVarA : null;
                if (zu0Var != null && (aVarF = zu0Var.f()) != null && (strA = aVarF.a()) != null) {
                    map2.put("value_type", strA);
                }
                map.put(strB, map2);
            }
        }
        g71 g71Var2 = this.b;
        View viewE = g71Var2 != null ? g71Var2.e() : null;
        Map mapE = ky5.e();
        if (viewE != null) {
            mapE.put("width", Integer.valueOf(viewE.getWidth()));
            mapE.put("height", Integer.valueOf(viewE.getHeight()));
        }
        Map mapD = ky5.d(mapE);
        if (!mapD.isEmpty()) {
            map.put("superview", mapD);
        }
        return map;
    }

    public final void a(g71 g71Var) {
        this.b = g71Var;
    }
}
