package com.transsion.push.utils;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ThreadManager {

    private static class SerialExecutor implements Executor {

        final Queue f48909a;

        Runnable f48910b;

        private SerialExecutor() {
            this.f48909a = new LinkedList();
        }

        protected synchronized void a() {
            Runnable runnable = (Runnable) this.f48909a.poll();
            this.f48910b = runnable;
            if (runnable != null) {
                ThreadManager.c().execute(this.f48910b);
            }
        }

        @Override
        public synchronized void execute(final Runnable runnable) {
            this.f48909a.offer(new Runnable() {
                @Override
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        SerialExecutor.this.a();
                    }
                }
            });
            if (this.f48910b == null) {
                a();
            }
        }
    }

    private static class b {

        private static HandlerThread f48911a;

        private static Handler f48912b;

        static {
            HandlerThread handlerThread = new HandlerThread("event-thread");
            f48911a = handlerThread;
            handlerThread.start();
            f48912b = new Handler(f48911a.getLooper());
        }
    }

    private static class c {

        private static ExecutorService f48913a = new ThreadPoolExecutor(2, 20, 1, TimeUnit.SECONDS, new SynchronousQueue(), new f(), new ThreadPoolExecutor.DiscardPolicy());
    }

    private static class d {

        private static ScheduledExecutorService f48914a = Executors.newSingleThreadScheduledExecutor();
    }

    private static class e {

        private static ExecutorService f48915a = Executors.newSingleThreadExecutor();
    }

    private static class f implements ThreadFactory {

        private static final AtomicInteger f48916d = new AtomicInteger(1);

        private final ThreadGroup f48917a;

        private final AtomicInteger f48918b = new AtomicInteger(1);

        private final String f48919c;

        f() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f48917a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f48919c = "tpush-pool-" + f48916d.getAndIncrement();
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f48917a, runnable, this.f48919c + this.f48918b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    private static class g {

        private static HandlerThread f48920a;

        private static Handler f48921b;

        static {
            HandlerThread handlerThread = new HandlerThread("globle_timer");
            f48920a = handlerThread;
            handlerThread.start();
            f48921b = new Handler(f48920a.getLooper());
        }
    }

    private static Handler b() {
        return b.f48912b;
    }

    public static ExecutorService c() {
        return c.f48913a;
    }

    private static ScheduledExecutorService d() {
        return d.f48914a;
    }

    private static ExecutorService e() {
        return e.f48915a;
    }

    public static final void execute(Runnable runnable) {
        c().execute(runnable);
    }

    public static void executeInBackground(Runnable runnable) {
        execute(runnable);
    }

    public static void executeInDbWriteThread(Runnable runnable) {
        executeInSingle(runnable);
    }

    public static void executeInSingle(Runnable runnable) {
        e().execute(runnable);
    }

    private static Handler f() {
        return g.f48921b;
    }

    public static Executor newSerialExecutor() {
        return new SerialExecutor();
    }

    public static void postAtTime(Runnable runnable, long j10) {
        f().postAtTime(runnable, j10);
    }

    public static void postDelayed(Runnable runnable, long j10) {
        f().postDelayed(runnable, j10);
    }

    public static void postDelayedAndRemoveBefore(Runnable runnable, long j10) {
        f().removeCallbacks(runnable);
        f().postDelayed(runnable, j10);
    }

    public static void runInEventThread(Runnable runnable) {
        b().post(runnable);
    }

    public static final ScheduledFuture<?> schedule(Runnable runnable, long j10) {
        return d().schedule(runnable, j10, TimeUnit.MILLISECONDS);
    }

    public static final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11) {
        return d().scheduleAtFixedRate(runnable, j10, j11, TimeUnit.MILLISECONDS);
    }

    public static ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11) {
        return d().scheduleWithFixedDelay(runnable, j10, j11, TimeUnit.MILLISECONDS);
    }

    public static final <T> Future<T> submit(Runnable runnable, T t10) {
        return c().submit(runnable, t10);
    }

    public static <T> Future<T> submitInSingle(Runnable runnable, T t10) {
        return e().submit(runnable, t10);
    }

    public static final <T> ScheduledFuture<T> schedule(Callable<T> callable, long j10) {
        return d().schedule(callable, j10, TimeUnit.MILLISECONDS);
    }

    public static final Future<?> submit(Runnable runnable) {
        return c().submit(runnable);
    }

    public static Future<?> submitInSingle(Runnable runnable) {
        return e().submit(runnable);
    }

    public static final <T> Future<T> submit(Callable<T> callable) {
        return c().submit(callable);
    }

    public static <T> Future<T> submitInSingle(Callable<T> callable) {
        return e().submit(callable);
    }
}
