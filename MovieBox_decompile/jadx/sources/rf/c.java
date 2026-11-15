package rf;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f71183c = new a(null);

    private ExecutorService f71184a;

    private ScheduledExecutorService f71185b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return b.f71186a.a();
        }

        private a() {
        }
    }

    private static final class b {

        public static final b f71186a = new b();

        private static final c f71187b = new c(null);

        private b() {
        }

        public final c a() {
            return f71187b;
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final void c() {
        if (this.f71184a == null) {
            this.f71184a = Executors.newCachedThreadPool();
        }
        if (this.f71185b == null) {
            this.f71185b = Executors.newSingleThreadScheduledExecutor();
        }
    }

    public final void a(Runnable runnable) {
        ExecutorService executorService;
        try {
            ExecutorService executorService2 = this.f71184a;
            Boolean boolValueOf = executorService2 == null ? null : Boolean.valueOf(executorService2.isShutdown());
            Intrinsics.e(boolValueOf);
            if (!boolValueOf.booleanValue() && (executorService = this.f71184a) != null) {
                executorService.execute(runnable);
            }
        } catch (RejectedExecutionException e10) {
            rf.b.f71178a.e(e10);
        }
    }

    public final void b(Runnable runnable) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.f71185b;
            if (scheduledExecutorService != null && scheduledExecutorService.isShutdown()) {
                return;
            }
            ScheduledExecutorService scheduledExecutorService2 = this.f71185b;
            if (scheduledExecutorService2 == null) {
                return;
            }
            scheduledExecutorService2.execute(runnable);
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    public final void d(Runnable runnable, long j10, TimeUnit unit) {
        Intrinsics.h(unit, "unit");
        try {
            ScheduledExecutorService scheduledExecutorService = this.f71185b;
            if (scheduledExecutorService != null && scheduledExecutorService.isShutdown()) {
                return;
            }
            ScheduledExecutorService scheduledExecutorService2 = this.f71185b;
            if (scheduledExecutorService2 == null) {
                return;
            }
            scheduledExecutorService2.schedule(runnable, j10, unit);
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    private c() {
        c();
    }
}
