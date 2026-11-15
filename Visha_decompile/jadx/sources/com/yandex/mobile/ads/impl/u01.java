package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.LinkedHashMap;

public final class u01 {
    private final Context a;
    private final z2 b;
    private final jm0 c;
    private final ym0 d;
    private final cn0 e;
    private final lo0 f;
    private final LinkedHashMap g;

    public u01(Context context, z2 z2Var, jm0 jm0Var, ym0 ym0Var, cn0 cn0Var, lo0 lo0Var) {
        y45.j(context, "context");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(ym0Var, "instreamAdUiElementsManager");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(lo0Var, "adCreativePlaybackEventListener");
        this.a = context;
        this.b = z2Var;
        this.c = jm0Var;
        this.d = ym0Var;
        this.e = cn0Var;
        this.f = lo0Var;
        this.g = new LinkedHashMap();
    }

    public final u2 a(gt gtVar) {
        y45.j(gtVar, "adBreak");
        LinkedHashMap linkedHashMap = this.g;
        Object obj = linkedHashMap.get(gtVar);
        Object obj2 = obj;
        if (obj == null) {
            Context applicationContext = this.a.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            u2 u2Var = new u2(applicationContext, gtVar, this.c, this.d, this.e, this.b);
            u2Var.a(this.f);
            linkedHashMap.put(gtVar, u2Var);
            obj2 = u2Var;
        }
        return (u2) obj2;
    }
}
