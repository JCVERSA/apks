package com.yandex.mobile.ads.impl;

final class nj0 implements Runnable {
    final oj0 b;

    public nj0(oj0 oj0Var) {
        this.b = oj0Var;
    }

    @Override
    public final void run() {
        for (oj0.a aVar : this.b.d.values()) {
            for (oj0.c cVar : aVar.d) {
                oj0.d dVar = cVar.b;
                if (dVar != null) {
                    si2 si2Var = aVar.c;
                    if (si2Var == null) {
                        cVar.a = aVar.b;
                        dVar.a(cVar, false);
                    } else {
                        dVar.a(si2Var);
                    }
                }
            }
        }
        this.b.d.clear();
        this.b.f = null;
    }
}
