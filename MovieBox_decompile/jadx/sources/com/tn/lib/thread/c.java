package com.tn.lib.thread;

import com.tn.lib.thread.wrapper.RunnableWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements Executor {

    public static final a f39902f = new a(null);

    private ExecutorService f39903a;

    private String f39904b;

    private og.b f39905c;

    private Executor f39906d;

    private ThreadLocal f39907e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final pg.a a(int i10) {
            return new pg.a(i10, 1, null);
        }

        private a() {
        }
    }

    private static final class b implements ThreadFactory {

        private final int f39908a;

        public b(int i10) {
            this.f39908a = i10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f39908a);
            return thread;
        }
    }

    public c(int i10, int i11, int i12, String threadName, og.b bVar, Executor executor, ExecutorService executorService) {
        Intrinsics.h(threadName, "threadName");
        this.f39904b = threadName;
        this.f39905c = bVar;
        this.f39906d = executor;
        this.f39903a = executorService == null ? a(i10, i11, i12) : executorService;
        this.f39904b = threadName;
        this.f39905c = bVar;
        this.f39906d = executor;
        this.f39907e = new ThreadLocal();
    }

    private final ExecutorService a(int i10, int i11, int i12) {
        if (i10 == 1) {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i11, new b(i12));
            Intrinsics.g(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
            return executorServiceNewFixedThreadPool;
        }
        if (i10 == 2) {
            ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new b(i12));
            Intrinsics.g(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
            return executorServiceNewCachedThreadPool;
        }
        if (i10 == 3) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(i11, new b(i12));
            Intrinsics.g(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
            return scheduledExecutorServiceNewScheduledThreadPool;
        }
        if (i10 != 4) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new b(i12));
            Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
            return executorServiceNewSingleThreadExecutor;
        }
        ExecutorService executorServiceNewSingleThreadExecutor2 = Executors.newSingleThreadExecutor(new b(i12));
        Intrinsics.g(executorServiceNewSingleThreadExecutor2, "newSingleThreadExecutor(...)");
        return executorServiceNewSingleThreadExecutor2;
    }

    private final pg.d b() {
        ThreadLocal threadLocal = this.f39907e;
        pg.d dVar = threadLocal != null ? (pg.d) threadLocal.get() : null;
        if (dVar == null) {
            dVar = new pg.d();
            dVar.h(this.f39904b);
            dVar.g(this.f39905c);
            dVar.f(this.f39906d);
            ThreadLocal threadLocal2 = this.f39907e;
            if (threadLocal2 != null) {
                threadLocal2.set(dVar);
            }
        }
        return dVar;
    }

    public final void c() {
        ThreadLocal threadLocal = this.f39907e;
        if (threadLocal != null) {
            threadLocal.set(null);
        }
    }

    @Override
    public void execute(Runnable command) {
        Intrinsics.h(command, "command");
        pg.d dVarB = b();
        qg.c.f69636b.a().e(dVarB.b(), this.f39903a, new RunnableWrapper(dVarB).setRunnable(command));
        c();
    }
}
