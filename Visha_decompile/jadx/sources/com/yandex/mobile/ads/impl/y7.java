package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class y7 implements kq1 {
    private final o3 a;
    private final c8 b;

    public y7(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
        this.b = new c8();
    }

    @Override
    public final Map<String, Object> a() {
        Map<String, Object> mapQ = kotlin.collections.a.q(abb.a(TrackingKey.AD_TYPE, this.a.b().a()));
        String strC = this.a.c();
        if (strC != null) {
            mapQ.put("block_id", strC);
            mapQ.put("ad_unit_id", strC);
        }
        mapQ.putAll(this.b.a(this.a.a()).b());
        return mapQ;
    }
}
