package com.therouter;

import android.os.Looper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

final class BufferExecutor implements ExecutorService, Executor {

    private Task f39733b;

    private final ArrayDeque f39732a = new ArrayDeque();

    private final ConcurrentHashMap f39734c = new ConcurrentHashMap();

    private final void b() {
        Collection<b> collectionValues = this.f39734c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (b bVar : collectionValues) {
            boolean z10 = System.currentTimeMillis() - bVar.a() < TheRouterThreadPool.h() * 1000;
            TheRouterKt.h(z10, "ThreadPool", "执行该任务耗时过久，有可能是此任务耗时，或者当前线程池中其他任务都很耗时，请优化逻辑\n当前任务被创建时间为" + bVar.a() + "此时时间为" + System.currentTimeMillis() + "\n" + bVar.b());
        }
    }

    public final synchronized void d() {
        try {
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                e(this);
            } else {
                int activeCount = TheRouterThreadPool.f39752i.getActiveCount();
                int size = TheRouterThreadPool.f39752i.getQueue().size();
                if (this.f39732a.size() > TheRouterThreadPool.i() * 100) {
                    TheRouterThreadPool.f39752i.setCorePoolSize(TheRouterThreadPool.f39747d);
                } else if (this.f39732a.size() > TheRouterThreadPool.i() * 10) {
                    TheRouterThreadPool.f39752i.setCorePoolSize(TheRouterThreadPool.f39746c);
                } else {
                    TheRouterThreadPool.f39752i.setCorePoolSize(TheRouterThreadPool.f39745b);
                }
                if (size <= TheRouterThreadPool.i() && activeCount < TheRouterThreadPool.f39752i.getCorePoolSize()) {
                    e(this);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static final void e(BufferExecutor bufferExecutor) {
        Object objPoll = bufferExecutor.f39732a.poll();
        Task task = (Task) objPoll;
        bufferExecutor.f39733b = task;
        if (objPoll != null) {
            if (task != null && TheRouter.m()) {
                bufferExecutor.f39734c.put(Integer.valueOf(task.getR().hashCode()), new b(task.getTrace()));
            }
            TheRouterThreadPool.f39752i.execute(bufferExecutor.f39733b);
            bufferExecutor.f39733b = null;
        }
    }

    @Override
    public synchronized boolean awaitTermination(long j10, TimeUnit unit) {
        Intrinsics.h(unit, "unit");
        return TheRouterThreadPool.f39752i.awaitTermination(j10, unit);
    }

    public final ConcurrentHashMap c() {
        return this.f39734c;
    }

    @Override
    public synchronized void execute(final Runnable r10) {
        String strJ;
        try {
            Intrinsics.h(r10, "r");
            ArrayDeque arrayDeque = this.f39732a;
            if (TheRouter.m()) {
                b();
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                strJ = TheRouterThreadPool.j(stackTrace);
            } else {
                strJ = "";
            }
            arrayDeque.offer(new Task(r10, strJ, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m296invoke();
                    return Unit.f64096a;
                }

                public final void m296invoke() {
                    if (TheRouter.m()) {
                        BufferExecutor.this.c().remove(Integer.valueOf(r10.hashCode()));
                    }
                    BufferExecutor.this.d();
                }
            }));
            if (this.f39733b == null) {
                d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized List invokeAll(Collection tasks) {
        List listInvokeAll;
        Intrinsics.h(tasks, "tasks");
        listInvokeAll = TheRouterThreadPool.f39752i.invokeAll(tasks);
        Intrinsics.g(listInvokeAll, "invokeAll(...)");
        return listInvokeAll;
    }

    @Override
    public synchronized Object invokeAny(Collection tasks) {
        Intrinsics.h(tasks, "tasks");
        return TheRouterThreadPool.f39752i.invokeAny(tasks);
    }

    @Override
    public synchronized boolean isShutdown() {
        return TheRouterThreadPool.f39752i.isShutdown();
    }

    @Override
    public synchronized boolean isTerminated() {
        return TheRouterThreadPool.f39752i.isTerminated();
    }

    @Override
    public synchronized void shutdown() {
        TheRouterThreadPool.f39752i.shutdown();
    }

    @Override
    public synchronized List shutdownNow() {
        List<Runnable> listShutdownNow;
        listShutdownNow = TheRouterThreadPool.f39752i.shutdownNow();
        Intrinsics.g(listShutdownNow, "shutdownNow(...)");
        return listShutdownNow;
    }

    @Override
    public synchronized Future submit(Callable task) {
        Future futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f39752i.submit(task);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }

    @Override
    public synchronized List invokeAll(Collection tasks, long j10, TimeUnit unit) {
        List listInvokeAll;
        Intrinsics.h(tasks, "tasks");
        Intrinsics.h(unit, "unit");
        listInvokeAll = TheRouterThreadPool.f39752i.invokeAll(tasks, j10, unit);
        Intrinsics.g(listInvokeAll, "invokeAll(...)");
        return listInvokeAll;
    }

    @Override
    public synchronized Object invokeAny(Collection tasks, long j10, TimeUnit unit) {
        Intrinsics.h(tasks, "tasks");
        Intrinsics.h(unit, "unit");
        return TheRouterThreadPool.f39752i.invokeAny(tasks, j10, unit);
    }

    @Override
    public synchronized Future submit(Runnable task, Object obj) {
        Future futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f39752i.submit(task, obj);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }

    @Override
    public synchronized Future submit(Runnable task) {
        Future<?> futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f39752i.submit(task);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }
}
