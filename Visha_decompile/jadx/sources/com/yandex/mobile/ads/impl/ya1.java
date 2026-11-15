package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.j1a;
import defpackage.y45;
import java.util.Map;

public final class ya1 implements nd2 {
    private final o3 a;

    public ya1(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
    }

    @Override
    public final Map<String, String> a() {
        String strC = this.a.c();
        if (strC == null || j1a.o0(strC)) {
            strC = "undefined";
        }
        return kotlin.collections.a.p(abb.a("block_id", strC), abb.a(TrackingKey.AD_TYPE, this.a.b().a()));
    }
}
