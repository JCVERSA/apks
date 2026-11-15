package com.cloud.h5update.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class ExecutorUtils {

    private static final int f20664a = Runtime.getRuntime().availableProcessors();

    private static AtomicInteger f20665b = new AtomicInteger();

    private static final Lazy f20666c = LazyKt.b(ExecutorUtils$ioE$2.INSTANCE);

    private static AtomicInteger f20667d = new AtomicInteger();

    private static final Lazy f20668e = LazyKt.b(ExecutorUtils$computationE$2.INSTANCE);

    private static AtomicInteger f20669f = new AtomicInteger();

    private static final Lazy f20670g = LazyKt.b(ExecutorUtils$newE$2.INSTANCE);

    private static final Lazy f20671h = LazyKt.b(ExecutorUtils$singleE$2.INSTANCE);

    private static AtomicInteger f20672i = new AtomicInteger();

    private static final Lazy f20673j = LazyKt.b(ExecutorUtils$scheduledE$2.INSTANCE);

    private static final Lazy f20674k = LazyKt.b(new Function0<ExecutorUtils$mainE$2.a>() {

        public static final class a extends AbstractExecutorService {

            private final Handler f20675a = new Handler(Looper.getMainLooper());

            a() {
            }

            @Override
            public Void shutdown() {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean awaitTermination(long j10, TimeUnit unit) {
                Intrinsics.h(unit, "unit");
                return false;
            }

            @Override
            public void execute(Runnable command) {
                Intrinsics.h(command, "command");
                this.f20675a.post(command);
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
            public List shutdownNow() {
                throw new UnsupportedOperationException();
            }
        }

        @Override
        public final a invoke() {
            return new a();
        }
    });

    private static final ExecutorService f() {
        return (ExecutorService) f20666c.getValue();
    }

    public static final ExecutorService g() {
        return f();
    }
}
