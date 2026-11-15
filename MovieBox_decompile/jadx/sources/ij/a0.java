package ij;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a0 {

    public static final a f62095b = new a(null);

    private static final Lazy f62096c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return a0.b();
        }
    });

    private ExecutorService f62097a = Executors.newFixedThreadPool(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a0 a() {
            return (a0) a0.f62096c.getValue();
        }

        private a() {
        }
    }

    public static final a0 b() {
        return new a0();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f62097a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
