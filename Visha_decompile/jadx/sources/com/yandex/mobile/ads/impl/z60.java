package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class z60 {
    private static final long c = TimeUnit.SECONDS.toMillis(10);
    private final hi1.b a;
    private final mg1 b;

    public final class a implements og1 {
        public a() {
        }

        @Override
        public final void a() {
            z60.this.a.b(m60.a());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public z60(hi1.b bVar) {
        this(bVar, mg1.a.a(false));
        int i = mg1.a;
    }

    public final void b() {
        this.b.stop();
    }

    public final void a() {
        this.b.a(c, new a());
    }

    public z60(hi1.b bVar, mg1 mg1Var) {
        y45.j(bVar, "eventListener");
        y45.j(mg1Var, "pausableTimer");
        this.a = bVar;
        this.b = mg1Var;
    }
}
