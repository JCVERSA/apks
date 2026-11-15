package com.google.firebase.crashlytics.internal.concurrency;

import android.os.Looper;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import qb.g;

public final class CrashlyticsWorkers {

    public static final Companion f30470e = new Companion(null);

    private static boolean f30471f;

    public final e f30472a;

    public final e f30473b;

    public final e f30474c;

    public final e f30475d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void h(Function0 function0, Function0 function1) {
            if (((Boolean) function0.invoke()).booleanValue()) {
                return;
            }
            g.f().b((String) function1.invoke());
            i();
        }

        public final String j() {
            return Thread.currentThread().getName();
        }

        public final boolean k() {
            String threadName = j();
            Intrinsics.g(threadName, "threadName");
            return StringsKt.c0(threadName, "Firebase Background Thread #", false, 2, null);
        }

        public final boolean l() {
            String threadName = j();
            Intrinsics.g(threadName, "threadName");
            return StringsKt.c0(threadName, "Firebase Blocking Thread #", false, 2, null);
        }

        public final boolean m() {
            return !Looper.getMainLooper().isCurrentThread();
        }

        public final void e() {
            h(new CrashlyticsWorkers$Companion$checkBackgroundThread$1(this), new Function0<String>() {
                @Override
                public final String invoke() {
                    return "Must be called on a background thread, was called on " + CrashlyticsWorkers.f30470e.j() + '.';
                }
            });
        }

        public final void f() {
            h(new CrashlyticsWorkers$Companion$checkBlockingThread$1(this), new Function0<String>() {
                @Override
                public final String invoke() {
                    return "Must be called on a blocking thread, was called on " + CrashlyticsWorkers.f30470e.j() + '.';
                }
            });
        }

        public final void g() {
            h(new CrashlyticsWorkers$Companion$checkNotMainThread$1(this), new Function0<String>() {
                @Override
                public final String invoke() {
                    return "Must not be called on a main thread, was called on " + CrashlyticsWorkers.f30470e.j() + '.';
                }
            });
        }

        public final boolean i() {
            return CrashlyticsWorkers.f30471f;
        }

        public final void n(boolean z10) {
            CrashlyticsWorkers.f30471f = z10;
        }

        private Companion() {
        }
    }

    public CrashlyticsWorkers(ExecutorService backgroundExecutorService, ExecutorService blockingExecutorService) {
        Intrinsics.h(backgroundExecutorService, "backgroundExecutorService");
        Intrinsics.h(blockingExecutorService, "blockingExecutorService");
        this.f30472a = new e(backgroundExecutorService);
        this.f30473b = new e(backgroundExecutorService);
        this.f30474c = new e(backgroundExecutorService);
        this.f30475d = new e(blockingExecutorService);
    }

    public static final void c() {
        f30470e.e();
    }

    public static final void d() {
        f30470e.f();
    }

    public static final void e() {
        f30470e.g();
    }

    public static final void f(boolean z10) {
        f30470e.n(z10);
    }
}
