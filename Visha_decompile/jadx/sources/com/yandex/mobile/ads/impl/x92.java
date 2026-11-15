package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;
import kotlin.Pair;

public final class x92 implements nd2 {
    private final a8 a;

    public x92(ha2 ha2Var, a8 a8Var) {
        y45.j(ha2Var, "configuration");
        y45.j(a8Var, "adRequestParametersProvider");
        this.a = a8Var;
    }

    @Override
    public final Map<String, String> a() {
        String strD = this.a.d();
        String str = "undefined";
        if (strD == null || strD.length() == 0) {
            strD = "undefined";
        }
        Pair pairA = abb.a("page_id", strD);
        String strC = this.a.c();
        if (strC != null && strC.length() != 0) {
            str = strC;
        }
        return kotlin.collections.a.p(pairA, abb.a("imp_id", str), abb.a(TrackingKey.AD_TYPE, ts.h.a()));
    }
}
