package com.tn.tranpay.report;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ThreadSingleExecutor {

    public static final a f40657b = new a(null);

    private static final Lazy f40658c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<ThreadSingleExecutor>() {
        @Override
        public final ThreadSingleExecutor invoke() {
            return new ThreadSingleExecutor();
        }
    });

    private ExecutorService f40659a = Executors.newSingleThreadExecutor(new com.tn.tranpay.report.a("tran_single"));

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ThreadSingleExecutor a() {
            return (ThreadSingleExecutor) ThreadSingleExecutor.f40658c.getValue();
        }

        private a() {
        }
    }

    public final void b(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f40659a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
