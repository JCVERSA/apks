package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ho0 {
    private final bv1 a;
    private final wl0 b;
    private final Context c;

    public ho0(Context context, bv1 bv1Var) {
        this(context, bv1Var, new wl0());
    }

    public final gt a(p2 p2Var, List<mb2> list) {
        ht htVarA;
        y45.j(p2Var, "adBreak");
        y45.j(list, "videoAds");
        String strC = p2Var.c();
        if (strC != null && (htVarA = this.b.a(p2Var.f())) != null) {
            long jA = wi0.a();
            mo0 mo0Var = new mo0(p2Var, htVarA, jA, new rz1(), new p10(p2Var), new yb2(), new em0());
            Context context = this.c;
            y45.i(context, "context");
            ArrayList arrayListA = new dc2(context, mo0Var).a(list);
            if (!arrayListA.isEmpty()) {
                ArrayList arrayList = new ArrayList(defpackage.z71.v(arrayListA, 10));
                Iterator it = arrayListA.iterator();
                while (it.hasNext()) {
                    arrayList.add((go0) ((zb2) it.next()).d());
                }
                return new gt(this.a, arrayListA, arrayList, strC, p2Var, htVarA, jA);
            }
        }
        return null;
    }

    public ho0(Context context, bv1 bv1Var, wl0 wl0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(wl0Var, "adBreakPositionParser");
        this.a = bv1Var;
        this.b = wl0Var;
        this.c = context.getApplicationContext();
    }
}
