package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import ob.b0;

@SuppressLint({"ThreadPoolCreation"})
public class ExecutorsRegistrar implements ComponentRegistrar {

    static final ob.u f30245a = new ob.u(new kc.b() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.p();
        }
    });

    static final ob.u f30246b = new ob.u(new kc.b() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.q();
        }
    });

    static final ob.u f30247c = new ob.u(new kc.b() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.r();
        }
    });

    static final ob.u f30248d = new ob.u(new kc.b() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.s();
        }
    });

    private static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i10 = Build.VERSION.SDK_INT;
        builderDetectNetwork.detectResourceMismatches();
        if (i10 >= 26) {
            builderDetectNetwork.detectUnbufferedIo();
        }
        return builderDetectNetwork.penaltyLog().build();
    }

    private static ThreadFactory j(String str, int i10) {
        return new b(str, i10, null);
    }

    private static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new b(str, i10, threadPolicy);
    }

    public static ScheduledExecutorService l(ob.e eVar) {
        return (ScheduledExecutorService) f30245a.get();
    }

    public static ScheduledExecutorService m(ob.e eVar) {
        return (ScheduledExecutorService) f30247c.get();
    }

    public static ScheduledExecutorService n(ob.e eVar) {
        return (ScheduledExecutorService) f30246b.get();
    }

    public static Executor o(ob.e eVar) {
        return UiExecutor.INSTANCE;
    }

    public static ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    public static ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }

    public static ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    public static ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    private static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    private static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, (ScheduledExecutorService) f30248d.get());
    }

    @Override
    public List getComponents() {
        return Arrays.asList(ob.c.f(b0.a(nb.a.class, ScheduledExecutorService.class), b0.a(nb.a.class, ExecutorService.class), b0.a(nb.a.class, Executor.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return ExecutorsRegistrar.l(eVar);
            }
        }).d(), ob.c.f(b0.a(nb.b.class, ScheduledExecutorService.class), b0.a(nb.b.class, ExecutorService.class), b0.a(nb.b.class, Executor.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return ExecutorsRegistrar.m(eVar);
            }
        }).d(), ob.c.f(b0.a(nb.c.class, ScheduledExecutorService.class), b0.a(nb.c.class, ExecutorService.class), b0.a(nb.c.class, Executor.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return ExecutorsRegistrar.n(eVar);
            }
        }).d(), ob.c.e(b0.a(nb.d.class, Executor.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return ExecutorsRegistrar.o(eVar);
            }
        }).d());
    }
}
