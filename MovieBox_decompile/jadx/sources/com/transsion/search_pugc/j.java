package com.transsion.search_pugc;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    public static final a f50481b = new a(null);

    private static final Lazy f50482c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return j.b();
        }
    });

    private ExecutorService f50483a = Executors.newFixedThreadPool(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            return (j) j.f50482c.getValue();
        }

        private a() {
        }
    }

    public static final j b() {
        return new j();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f50483a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
