package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class ri2 implements lq1<oi2, ki2> {
    @Override
    public final op1 a(oi2 oi2Var) {
        oi2 oi2Var2 = oi2Var;
        y45.j(oi2Var2, "requestConfiguration");
        Map mapP = kotlin.collections.a.p(abb.a("page_id", oi2Var2.a()), abb.a("category_id", oi2Var2.b()), abb.a(TrackingKey.AD_TYPE, ts.h.a()));
        op1.b bVar = op1.b.t;
        y45.j(bVar, "reportType");
        y45.j(mapP, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapP), (f) null);
    }

    @Override
    public final op1 a(xq1<ki2> xq1Var, int i, oi2 oi2Var) {
        oi2 oi2Var2 = oi2Var;
        y45.j(oi2Var2, "requestConfiguration");
        Map mapC = kotlin.collections.a.C(kotlin.collections.a.p(abb.a("page_id", oi2Var2.a()), abb.a("category_id", oi2Var2.b()), abb.a(TrackingKey.AD_TYPE, ts.h.a())));
        if (i != -1) {
            mapC.put(TrackingKey.CODE, Integer.valueOf(i));
        }
        op1.b bVar = op1.b.u;
        y45.j(bVar, "reportType");
        y45.j(mapC, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapC), (f) null);
    }
}
