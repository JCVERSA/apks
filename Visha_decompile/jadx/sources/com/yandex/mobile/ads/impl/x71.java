package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class x71 {
    private final o3 a;
    private final String b;
    private final o8<?> c;
    private final y61 d;
    private final i81 e;
    private f81 f;

    public x71(o3 o3Var, String str, o8<?> o8Var, y61 y61Var, i81 i81Var, f81 f81Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "responseNativeType");
        y45.j(o8Var, "adResponse");
        y45.j(y61Var, "nativeAdResponse");
        y45.j(i81Var, "nativeCommonReportDataProvider");
        this.a = o3Var;
        this.b = str;
        this.c = o8Var;
        this.d = y61Var;
        this.e = i81Var;
        this.f = f81Var;
    }

    public final pp1 a() {
        pp1 pp1VarA = this.e.a(this.c, this.a, this.d);
        f81 f81Var = this.f;
        if (f81Var != null) {
            pp1VarA.b(f81Var.a(), "bind_type");
        }
        pp1VarA.a(this.b, "native_ad_type");
        gz1 gz1VarR = this.a.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        pp1VarA.a(this.c.a());
        return pp1VarA;
    }

    public final void a(f81 f81Var) {
        y45.j(f81Var, "bindType");
        this.f = f81Var;
    }
}
