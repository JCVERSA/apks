package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import defpackage.al5;
import defpackage.d50;
import defpackage.ic1;
import defpackage.nc1;
import defpackage.nfb;
import defpackage.pj8;
import defpackage.rf0;
import defpackage.vk8;
import defpackage.xo1;
import defpackage.z72;
import defpackage.zb1;
import defpackage.zi5;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

@SuppressLint({"ThreadPoolCreation"})
public class ExecutorsRegistrar implements ComponentRegistrar {
    public static final zi5 a = new zi5(new pj8() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.p();
        }
    });
    public static final zi5 b = new zi5(new pj8() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.q();
        }
    });
    public static final zi5 c = new zi5(new pj8() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.r();
        }
    });
    public static final zi5 d = new zi5(new pj8() {
        @Override
        public final Object get() {
            return ExecutorsRegistrar.s();
        }
    });

    public static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        builderDetectNetwork.detectResourceMismatches();
        builderDetectNetwork.detectUnbufferedIo();
        return builderDetectNetwork.penaltyLog().build();
    }

    public static ThreadFactory j(String str, int i) {
        return new xo1(str, i, null);
    }

    public static ThreadFactory k(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        return new xo1(str, i, threadPolicy);
    }

    public static ScheduledExecutorService l(ic1 ic1Var) {
        return (ScheduledExecutorService) a.get();
    }

    public static ScheduledExecutorService m(ic1 ic1Var) {
        return (ScheduledExecutorService) c.get();
    }

    public static ScheduledExecutorService n(ic1 ic1Var) {
        return (ScheduledExecutorService) b.get();
    }

    public static Executor o(ic1 ic1Var) {
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

    public static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    public static ScheduledExecutorService u(ExecutorService executorService) {
        return new z72(executorService, (ScheduledExecutorService) d.get());
    }

    @Override
    public List getComponents() {
        return Arrays.asList(zb1.d(vk8.a(d50.class, ScheduledExecutorService.class), vk8.a(d50.class, ExecutorService.class), vk8.a(d50.class, Executor.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return ExecutorsRegistrar.l(ic1Var);
            }
        }).d(), zb1.d(vk8.a(rf0.class, ScheduledExecutorService.class), vk8.a(rf0.class, ExecutorService.class), vk8.a(rf0.class, Executor.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return ExecutorsRegistrar.m(ic1Var);
            }
        }).d(), zb1.d(vk8.a(al5.class, ScheduledExecutorService.class), vk8.a(al5.class, ExecutorService.class), vk8.a(al5.class, Executor.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return ExecutorsRegistrar.n(ic1Var);
            }
        }).d(), zb1.c(vk8.a(nfb.class, Executor.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return ExecutorsRegistrar.o(ic1Var);
            }
        }).d());
    }
}
