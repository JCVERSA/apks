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
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ThreadManager {

    public static class SerialExecutor implements Executor {
        public final Queue b;
        public Runnable c;

        public SerialExecutor() {
            this.b = new LinkedList();
        }

        public synchronized void a() {
            Runnable runnable = (Runnable) this.b.poll();
            this.c = runnable;
            if (runnable != null) {
                ThreadManager.c().execute(this.c);
            }
        }

        @Override
        public synchronized void execute(final Runnable runnable) {
            this.b.offer(new Runnable() {
                @Override
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        SerialExecutor.this.a();
                    }
                }
            });
            if (this.c == null) {
                a();
            }
        }
    }

    public static class b {
        public static HandlerThread a;
        public static Handler b;

        static {
            HandlerThread handlerThread = new HandlerThread("event-thread");
            a = handlerThread;
            handlerThread.start();
            b = new Handler(a.getLooper());
        }
    }

    public static class c {
        public static ThreadPoolExecutor a = new ThreadPoolExecutor(2, 20, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(20), new f(), new ThreadPoolExecutor.CallerRunsPolicy());
    }

    public static class d {
        public static ScheduledExecutorService a = Executors.newSingleThreadScheduledExecutor();
    }

    public static class e {
        public static ExecutorService a = Executors.newSingleThreadExecutor();
    }

    public static class f implements ThreadFactory {
        public static final AtomicInteger e = new AtomicInteger(1);
        public final ThreadGroup b;
        public final AtomicInteger c = new AtomicInteger(1);
        public final String d;

        public f() {
            SecurityManager securityManager = System.getSecurityManager();
            this.b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.d = "tpush-pool-" + e.getAndIncrement();
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.b, runnable, this.d + this.c.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public static class g {
        public static HandlerThread a;
        public static Handler b;

        static {
            HandlerThread handlerThread = new HandlerThread("globle_timer");
            a = handlerThread;
            handlerThread.start();
            b = new Handler(a.getLooper());
        }
    }

    public static Handler b() {
        return b.b;
    }

    public static ExecutorService c() {
        return c.a;
    }

    public static ScheduledExecutorService d() {
        return d.a;
    }

    public static ExecutorService e() {
        return e.a;
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

    public static Handler f() {
        return g.b;
    }

    public static Executor newSerialExecutor() {
        return new SerialExecutor();
    }

    public static void postAtTime(Runnable runnable, long j) {
        f().postAtTime(runnable, j);
    }

    public static void postDelayed(Runnable runnable, long j) {
        f().postDelayed(runnable, j);
    }

    public static void postDelayedAndRemoveBefore(Runnable runnable, long j) {
        f().removeCallbacks(runnable);
        f().postDelayed(runnable, j);
    }

    public static void runInEventThread(Runnable runnable) {
        b().post(runnable);
    }

    public static final ScheduledFuture<?> schedule(Runnable runnable, long j) {
        return d().schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    public static final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2) {
        return d().scheduleAtFixedRate(runnable, j, j2, TimeUnit.MILLISECONDS);
    }

    public static ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2) {
        return d().scheduleWithFixedDelay(runnable, j, j2, TimeUnit.MILLISECONDS);
    }

    public static final <T> Future<T> submit(Runnable runnable, T t) {
        return c().submit(runnable, t);
    }

    public static <T> Future<T> submitInSingle(Runnable runnable, T t) {
        return e().submit(runnable, t);
    }

    public static final <T> ScheduledFuture<T> schedule(Callable<T> callable, long j) {
        return d().schedule(callable, j, TimeUnit.MILLISECONDS);
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
