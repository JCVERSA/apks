package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class fs0 {
    private final Context a;
    private final o3 b;
    private final Cif c;
    private final j11 d;

    public fs0(Context context, o3 o3Var) {
        this(context, o3Var, new Cif(), j11.e.a());
    }

    private final List<w3> a() {
        w3 w3VarA;
        w3 w3VarA2;
        try {
            this.c.a();
            w3VarA = null;
        } catch (bp0 e) {
            int i = w7.A;
            w3VarA = w7.a(e.getMessage(), e.a());
        }
        try {
            this.d.a(this.a);
            w3VarA2 = null;
        } catch (bp0 e2) {
            int i2 = w7.A;
            w3VarA2 = w7.a(e2.getMessage(), e2.a());
        }
        return defpackage.y71.p(w3VarA, w3VarA2, this.b.c() == null ? w7.f() : null, this.b.a() == null ? w7.t() : null);
    }

    public final w3 b() {
        List listJ0 = defpackage.i81.J0(a(), defpackage.y71.o(this.b.r() == null ? w7.e() : null));
        String strA = this.b.b().a();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listJ0, 10));
        Iterator it = listJ0.iterator();
        while (it.hasNext()) {
            arrayList.add(((w3) it.next()).d());
        }
        a4.a(strA, arrayList);
        return (w3) defpackage.i81.q0(listJ0);
    }

    public final w3 c() {
        return (w3) defpackage.i81.q0(a());
    }

    public fs0(Context context, o3 o3Var, Cif cif, j11 j11Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(cif, "appMetricaIntegrationValidator");
        y45.j(j11Var, "mobileAdsIntegrationValidator");
        this.a = context;
        this.b = o3Var;
        this.c = cif;
        this.d = j11Var;
    }
}
