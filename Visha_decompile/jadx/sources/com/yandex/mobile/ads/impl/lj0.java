package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;

final class lj0 implements xq1.b<Bitmap> {
    final String a;
    final oj0 b;

    public lj0(oj0 oj0Var, String str) {
        this.b = oj0Var;
        this.a = str;
    }

    @Override
    public final void a(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        oj0 oj0Var = this.b;
        String str = this.a;
        oj0Var.b.a(str, bitmap);
        oj0.a aVar = (oj0.a) oj0Var.c.remove(str);
        if (aVar != null) {
            aVar.b = bitmap;
            oj0Var.d.put(str, aVar);
            if (oj0Var.f == null) {
                nj0 nj0Var = new nj0(oj0Var);
                oj0Var.f = nj0Var;
                oj0Var.e.postDelayed(nj0Var, 100);
            }
        }
    }
}
