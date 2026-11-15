package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class vt1 implements s8 {
    private final o8<?> a;

    public vt1(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
    }

    @Override
    public final pp1 a() {
        pp1 pp1Var = new pp1((Map) null, 3);
        pp1Var.b(this.a.m(), "ad_source");
        pp1Var.b(this.a.o(), "ad_type_format");
        pp1Var.b(this.a.p(), "block_id");
        pp1Var.b(this.a.p(), "ad_unit_id");
        pp1Var.b(this.a.H(), "product_type");
        pp1Var.a(this.a.L(), "server_log_id");
        pp1Var.b(this.a.M().a().a(), "size_type");
        pp1Var.b(Integer.valueOf(this.a.M().getWidth()), "width");
        pp1Var.b(Integer.valueOf(this.a.M().getHeight()), "height");
        pp1Var.a(this.a.a());
        return pp1Var;
    }
}
