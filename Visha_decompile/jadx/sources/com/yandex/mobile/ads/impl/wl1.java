package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class wl1 implements cd2 {
    private final Context a;
    private final List<vl1> b;

    public wl1(Context context, zb2<?> zb2Var) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        this.a = context.getApplicationContext();
        this.b = a(zb2Var);
    }

    private static List a(zb2 zb2Var) {
        uu uuVarB = zb2Var.b();
        long jE = uuVarB.e();
        List<l62> listJ = uuVarB.j();
        ArrayList<l62> arrayList = new ArrayList();
        for (Object obj : listJ) {
            if (y45.e("progress", ((l62) obj).a())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (l62 l62Var : arrayList) {
            na2 na2VarB = l62Var.b();
            vl1 vl1Var = null;
            if (na2VarB != null) {
                Long lValueOf = na2.b.b == na2VarB.c() ? Long.valueOf((long) na2VarB.d()) : na2.b.c == na2VarB.c() ? Long.valueOf((long) ((na2VarB.d() / 100) * jE)) : null;
                if (lValueOf != null) {
                    vl1Var = new vl1(l62Var.c(), lValueOf.longValue());
                }
            }
            if (vl1Var != null) {
                arrayList2.add(vl1Var);
            }
        }
        return defpackage.i81.e1(arrayList2);
    }

    @Override
    public final void a(long j, long j2) {
        Iterator<vl1> it = this.b.iterator();
        while (it.hasNext()) {
            vl1 next = it.next();
            if (next.a() <= j2) {
                ze2.a aVar = ze2.c;
                Context context = this.a;
                y45.i(context, "context");
                aVar.a(context).a(next.b());
                it.remove();
            }
        }
    }
}
