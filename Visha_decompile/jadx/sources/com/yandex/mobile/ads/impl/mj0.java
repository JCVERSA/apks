package com.yandex.mobile.ads.impl;

final class mj0 implements xq1.a {
    final String a;
    final oj0 b;

    public mj0(oj0 oj0Var, String str) {
        this.b = oj0Var;
        this.a = str;
    }

    @Override
    public final void a(si2 si2Var) {
        oj0 oj0Var = this.b;
        String str = this.a;
        oj0.a aVar = (oj0.a) oj0Var.c.remove(str);
        if (aVar != null) {
            aVar.c = si2Var;
            oj0Var.d.put(str, aVar);
            if (oj0Var.f == null) {
                nj0 nj0Var = new nj0(oj0Var);
                oj0Var.f = nj0Var;
                oj0Var.e.postDelayed(nj0Var, 100);
            }
        }
    }
}
