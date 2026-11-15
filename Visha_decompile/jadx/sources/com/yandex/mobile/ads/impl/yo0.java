package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class yo0 implements kq1 {
    private final oi2 a;

    public yo0(oi2 oi2Var) {
        y45.j(oi2Var, "requestConfig");
        this.a = oi2Var;
    }

    @Override
    public final Map<String, Object> a() {
        return kotlin.collections.a.p(abb.a(TrackingKey.AD_TYPE, ts.h.a()), abb.a("page_id", this.a.a()), abb.a("category_id", this.a.b()));
    }
}
