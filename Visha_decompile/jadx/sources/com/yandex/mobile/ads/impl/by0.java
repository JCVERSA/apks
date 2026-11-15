package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.HashMap;

public final class by0 implements s8 {
    private final o8<?> a;

    public by0(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
    }

    @Override
    public final pp1 a() {
        pp1 pp1Var = new pp1(new HashMap(), 2);
        pp1Var.b(this.a.m(), "ad_source");
        pp1Var.b(this.a.p(), "block_id");
        pp1Var.b(this.a.p(), "ad_unit_id");
        pp1Var.a(this.a.L(), "server_log_id");
        pp1Var.a(this.a.a());
        return pp1Var;
    }
}
