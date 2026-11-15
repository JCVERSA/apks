package com.transsion.postdetail.shorttv_pugc.factory;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class j implements vs.a {

    private final Lazy f47272a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.d();
        }
    });

    private final gj.c c() {
        return (gj.c) this.f47272a.getValue();
    }

    public static final gj.c d() {
        return (gj.c) gj.a.f61068a.a(gj.c.class);
    }

    @Override
    public void a(long j10) {
        gj.c cVarC = c();
        if (cVarC != null) {
            cVarC.a(j10);
        }
    }
}
