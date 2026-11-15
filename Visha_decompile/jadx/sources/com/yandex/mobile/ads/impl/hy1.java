package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class hy1 {
    private final o8<?> a;
    private final x71 b;
    private final sp1 c;

    public hy1(Context context, o8<?> o8Var, o3 o3Var, x71 x71Var, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(sp1Var, "metricaReporter");
        this.a = o8Var;
        this.b = x71Var;
        this.c = sp1Var;
    }

    public final void a(List<z02> list) {
        y45.j(list, "socialActionItems");
        pp1 pp1Var = new pp1((Map) null, 3);
        pp1Var.b(op1.a.a, "adapter");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((z02) it.next()).b());
        }
        pp1Var.b((String[]) arrayList.toArray(new String[0]), "social_actions");
        x71 x71Var = this.b;
        if (x71Var != null) {
            pp1Var = qp1.a(pp1Var, x71Var.a());
        }
        pp1Var.a(this.a.a());
        op1.b bVar = op1.b.G;
        Map<String, Object> mapB = pp1Var.b();
        this.c.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1Var, bVar, "reportType", mapB, "reportData")));
    }
}
