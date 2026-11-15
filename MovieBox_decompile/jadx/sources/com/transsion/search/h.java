package com.transsion.search;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final a f50174b = new a(null);

    private static final Lazy f50175c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return h.b();
        }
    });

    private ExecutorService f50176a = Executors.newFixedThreadPool(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return (h) h.f50175c.getValue();
        }

        private a() {
        }
    }

    public static final h b() {
        return new h();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f50176a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
