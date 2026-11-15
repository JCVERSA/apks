package com.cloud.tupdate.utils;

import android.os.Handler;
import android.os.Looper;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.KotlinNothingValueException;

public abstract class ExecutorUtils {
    public static final int a = Runtime.getRuntime().availableProcessors();
    public static AtomicInteger b = new AtomicInteger();
    public static final yi5 c = kotlin.b.a(ExecutorUtils$ioE$2.INSTANCE);
    public static AtomicInteger d = new AtomicInteger();
    public static final yi5 e = kotlin.b.a(ExecutorUtils$computationE$2.INSTANCE);
    public static AtomicInteger f = new AtomicInteger();
    public static final yi5 g = kotlin.b.a(ExecutorUtils$newE$2.INSTANCE);
    public static final yi5 h = kotlin.b.a(ExecutorUtils$singleE$2.INSTANCE);
    public static AtomicInteger i = new AtomicInteger();
    public static final yi5 j = kotlin.b.a(ExecutorUtils$scheduledE$2.INSTANCE);
    public static final yi5 k = kotlin.b.a(new c74() {

        public static final class a extends AbstractExecutorService {
            public final Handler b = new Handler(Looper.getMainLooper());

            @Override
            public boolean awaitTermination(long j, TimeUnit timeUnit) {
                y45.j(timeUnit, "unit");
                return false;
            }

            public Void b() {
                throw new UnsupportedOperationException();
            }

            @Override
            public void execute(Runnable runnable) {
                y45.j(runnable, "command");
                this.b.post(runnable);
            }

            @Override
            public boolean isShutdown() {
                return false;
            }

            @Override
            public boolean isTerminated() {
                return false;
            }

            @Override
            public void shutdown() {
                b();
                throw new KotlinNothingValueException();
            }

            @Override
            public List shutdownNow() {
                throw new UnsupportedOperationException();
            }
        }

        @Override
        public final a invoke() {
            return new a();
        }
    });

    public static final ExecutorService f() {
        return (ExecutorService) c.getValue();
    }

    public static final ExecutorService g() {
        return (ExecutorService) k.getValue();
    }

    public static final ExecutorService h() {
        return f();
    }

    public static final ExecutorService i() {
        return g();
    }
}
