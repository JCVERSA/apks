package com.transsion.publish;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class p {

    public static final a f48365b = new a(null);

    private static final Lazy f48366c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return p.b();
        }
    });

    private ExecutorService f48367a = Executors.newFixedThreadPool(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return (p) p.f48366c.getValue();
        }

        private a() {
        }
    }

    public static final p b() {
        return new p();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f48367a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
