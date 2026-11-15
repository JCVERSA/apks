package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class gn1 implements cd2 {
    private final mg2 a;
    private final List<a> b;

    public static final class a {
        private final mg2.a a;
        private final float b;

        public a(mg2.a aVar, float f) {
            y45.j(aVar, "trackerQuartile");
            this.a = aVar;
            this.b = f;
        }

        public final float a() {
            return this.b;
        }

        public final mg2.a b() {
            return this.a;
        }
    }

    public gn1(ng2 ng2Var) {
        y45.j(ng2Var, "videoTracker");
        this.a = ng2Var;
        this.b = defpackage.y71.q(new a(mg2.a.b, 0.25f), new a(mg2.a.c, 0.5f), new a(mg2.a.d, 0.75f));
    }

    @Override
    public final void a(long j, long j2) {
        if (j != 0) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.a() * j <= j2) {
                    this.a.a(next.b());
                    it.remove();
                }
            }
        }
    }
}
