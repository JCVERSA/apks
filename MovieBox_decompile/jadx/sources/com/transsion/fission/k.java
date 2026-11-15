package com.transsion.fission;

import com.therouter.TheRouter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class k {

    private static FissionConfig f42967c;

    public static final k f42965a = new k();

    private static final String f42966b = "FissionManager";

    private static final n0 f42968d = o0.a(y0.b());

    private static final Lazy f42969e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return k.f();
        }
    });

    private static final Lazy f42970f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return k.e();
        }
    });

    private k() {
    }

    public static final qx.a e() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final gk.a f() {
        return (gk.a) kg.c.f63982e.a().h(gk.a.class);
    }

    public final String c() {
        return l.f42971a.b();
    }

    public final FissionConfig d() {
        return f42967c;
    }
}
