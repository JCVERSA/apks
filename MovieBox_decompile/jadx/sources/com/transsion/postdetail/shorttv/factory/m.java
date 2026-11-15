package com.transsion.postdetail.shorttv.factory;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class m implements ur.a {

    private final Lazy f47186a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return m.e();
        }
    });

    private final gj.c d() {
        return (gj.c) this.f47186a.getValue();
    }

    public static final gj.c e() {
        return (gj.c) gj.a.f61068a.a(gj.c.class);
    }

    @Override
    public void a(long j10) {
        gj.c cVarD = d();
        if (cVarD != null) {
            cVarD.a(j10);
        }
    }

    @Override
    public void b(long j10) {
        gj.c cVarD = d();
        if (cVarD != null) {
            cVarD.b(j10);
        }
    }
}
