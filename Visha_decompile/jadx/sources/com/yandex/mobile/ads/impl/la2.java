package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;
import kotlin.Pair;

public final class la2 implements lq1<ha2, z92> {
    private final a8 a;

    public la2(a8 a8Var) {
        y45.j(a8Var, "adRequestParametersProvider");
        this.a = a8Var;
    }

    @Override
    public final op1 a(ha2 ha2Var) {
        y45.j(ha2Var, "requestConfiguration");
        Map<String, Object> mapA = a();
        op1.b bVar = op1.b.m;
        y45.j(bVar, "reportType");
        y45.j(mapA, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapA), (f) null);
    }

    @Override
    public final op1 a(xq1<z92> xq1Var, int i, ha2 ha2Var) {
        y45.j(ha2Var, "requestConfiguration");
        Map mapC = kotlin.collections.a.C(a());
        if (i != -1) {
            mapC.put(TrackingKey.CODE, Integer.valueOf(i));
        }
        op1.b bVar = op1.b.n;
        y45.j(bVar, "reportType");
        y45.j(mapC, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapC), (f) null);
    }

    private final Map<String, Object> a() {
        String strD = this.a.d();
        if (strD == null) {
            strD = "";
        }
        if (strD.length() == 0) {
            strD = "null";
        }
        Pair pairA = abb.a("page_id", strD);
        String strC = this.a.c();
        String str = strC != null ? strC : "";
        return kotlin.collections.a.p(pairA, abb.a("imp_id", str.length() != 0 ? str : "null"), abb.a(TrackingKey.AD_TYPE, ts.h.a()));
    }
}
