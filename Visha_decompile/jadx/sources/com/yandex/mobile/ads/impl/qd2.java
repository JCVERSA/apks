package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.fd7;
import defpackage.xq8;
import defpackage.y45;
import defpackage.ye9;
import java.util.Set;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class qd2 {
    static final af5[] c = {xq8.f(new MutablePropertyReference1Impl(qd2.class, "status", "getStatus()Lcom/monetization/ads/instream/status/VideoAdStatus;", 0))};
    private final Set<pd2> a = ye9.h(pd2.b);
    private final a b;

    public static final class a extends fd7 {
        final qd2 a;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(qd2 qd2Var) {
            pd2 pd2Var = pd2.b;
            this.a = qd2Var;
            super(pd2Var);
        }

        @Override
        public final void afterChange(af5 af5Var, pd2 pd2Var, pd2 pd2Var2) {
            y45.j(af5Var, "property");
            this.a.a.add(pd2Var2);
        }
    }

    public qd2() {
        defpackage.l72 l72Var = defpackage.l72.a;
        this.b = new a(this);
    }

    public final void b() {
        this.a.clear();
        pd2 pd2Var = pd2.b;
        y45.j(pd2Var, "<set-?>");
        this.b.setValue(this, c[0], pd2Var);
    }

    public final pd2 a() {
        return (pd2) this.b.getValue(this, c[0]);
    }

    public final boolean a(pd2 pd2Var) {
        y45.j(pd2Var, "videoAdStatus");
        return this.a.contains(pd2Var);
    }

    public final void b(pd2 pd2Var) {
        y45.j(pd2Var, "<set-?>");
        this.b.setValue(this, c[0], pd2Var);
    }
}
