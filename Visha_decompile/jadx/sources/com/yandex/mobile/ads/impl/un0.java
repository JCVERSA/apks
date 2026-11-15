package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class un0 implements gk0 {
    final tn0 a;
    final List<ig<?>> b;
    final sj0 c;
    final tn0.a d;
    final zb2<go0> e;

    public un0(tn0 tn0Var, List list, sj0 sj0Var, eo0 eo0Var, zb2 zb2Var) {
        this.a = tn0Var;
        this.b = list;
        this.c = sj0Var;
        this.d = eo0Var;
        this.e = zb2Var;
    }

    @Override
    public final void a(String str, Bitmap bitmap) {
        y45.j(str, "url");
        y45.j(bitmap, "bitmap");
    }

    @Override
    public final void a(Map<String, Bitmap> map) {
        y45.j(map, "images");
        this.a.b.a(f5.q);
        this.a.d.a(this.a.c.a(this.b, map), map);
        this.c.a(map);
        this.d.h(this.e);
    }
}
