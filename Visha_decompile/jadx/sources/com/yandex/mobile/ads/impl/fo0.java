package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class fo0 implements ia2 {
    private final ha2 a;

    public fo0(ha2 ha2Var) {
        y45.j(ha2Var, "requestConfiguration");
        this.a = ha2Var;
    }

    @Override
    public final Map<String, String> a() {
        a8 a8Var = new a8(this.a.a());
        Map mapE = ky5.e();
        Map<String, String> mapB = this.a.b();
        if (mapB != null) {
            mapE.putAll(mapB);
        }
        String strE = a8Var.e();
        if (strE != null) {
            mapE.put("video-session-id", strE);
        }
        return ky5.d(mapE);
    }
}
