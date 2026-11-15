package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import java.util.Map;

public final class xl0 implements ld2.a {
    private final a8 a;

    public xl0(gt gtVar) {
        y45.j(gtVar, "coreInstreamAdBreak");
        this.a = new a8(gtVar.a());
    }

    @Override
    public final Map<String, Object> a() {
        pp1 pp1Var = new pp1((Map) null, 3);
        pp1Var.b(ts.h.a(), TrackingKey.AD_TYPE);
        pp1Var.b(this.a.d(), "page_id");
        pp1Var.b(this.a.b(), "category_id");
        pp1Var.b(this.a.c(), "imp_id");
        return pp1Var.b();
    }
}
