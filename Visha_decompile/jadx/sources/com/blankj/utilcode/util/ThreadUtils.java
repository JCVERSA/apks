package com.blankj.utilcode.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class ThreadUtils {
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static final Map b = new HashMap();
    public static final Map c = new ConcurrentHashMap();
    public static final int d = Runtime.getRuntime().availableProcessors();
    public static final Timer e = new Timer();
    public static Executor f;

    public static final class LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile b mPool;

        public LinkedBlockingQueue4Util() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        @Override
        public boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }

        public LinkedBlockingQueue4Util(boolean z) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z) {
                this.mCapacity = 0;
            }
        }

        public LinkedBlockingQueue4Util(int i) {
            this.mCapacity = i;
        }
    }

    public static abstract class SimpleTask<T> extends Task<T> {
        @Override
        public void onCancel() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override
        public void onFail(Throwable th) {
            Log.e("ThreadUtils", "onFail: ", th);
        }
    }

    public static abstract class Task<T> implements Runnable {
        private static final int CANCELLED = 4;
        private static final int COMPLETING = 3;
        private static final int EXCEPTIONAL = 2;
        private static final int INTERRUPTED = 5;
        private static final int NEW = 0;
        private static final int RUNNING = 1;
        private static final int TIMEOUT = 6;
        private Executor deliver;
        private volatile boolean isSchedule;
        private a mTimeoutListener;
        private long mTimeoutMillis;
        private Timer mTimer;
        private volatile Thread runner;
        private final AtomicInteger state = new AtomicInteger(0);

        public class AnonymousClass1 extends TimerTask {
            public AnonymousClass1() {
            }

            @Override
            public void run() {
                if (Task.this.isDone()) {
                    return;
                }
                Task.access$400(Task.this);
            }
        }

        public interface a {
        }

        public static a access$400(Task task) {
            task.getClass();
            return null;
        }

        private Executor getDeliver() {
            Executor executor = this.deliver;
            return executor == null ? ThreadUtils.m() : executor;
        }

        public void setSchedule(boolean z) {
            this.isSchedule = z;
        }

        public void timeout() {
            synchronized (this.state) {
                try {
                    if (this.state.get() > 1) {
                        return;
                    }
                    this.state.set(6);
                    if (this.runner != null) {
                        this.runner.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void cancel() {
            cancel(true);
        }

        public abstract T doInBackground() throws Throwable;

        public boolean isCanceled() {
            return this.state.get() >= 4;
        }

        public boolean isDone() {
            return this.state.get() > 1;
        }

        public abstract void onCancel();

        @CallSuper
        public void onDone() {
            ThreadUtils.c.remove(this);
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer = null;
            }
        }

        public abstract void onFail(Throwable th);

        public abstract void onSuccess(T t);

        @Override
        public void run() {
            if (this.isSchedule) {
                if (this.runner == null) {
                    if (!this.state.compareAndSet(0, 1)) {
                        return;
                    } else {
                        this.runner = Thread.currentThread();
                    }
                } else if (this.state.get() != 1) {
                    return;
                }
            } else if (!this.state.compareAndSet(0, 1)) {
                return;
            } else {
                this.runner = Thread.currentThread();
            }
            try {
                final T tDoInBackground = doInBackground();
                if (this.isSchedule) {
                    if (this.state.get() != 1) {
                        return;
                    }
                    getDeliver().execute(new Runnable() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public void run() {
                            Task.this.onSuccess(tDoInBackground);
                        }
                    });
                } else if (this.state.compareAndSet(1, 3)) {
                    getDeliver().execute(new Runnable() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public void run() {
                            Task.this.onSuccess(tDoInBackground);
                            Task.this.onDone();
                        }
                    });
                }
            } catch (InterruptedException unused) {
                this.state.compareAndSet(4, 5);
            } catch (Throwable th) {
                if (this.state.compareAndSet(1, 2)) {
                    getDeliver().execute(new Runnable() {
                        @Override
                        public void run() {
                            Task.this.onFail(th);
                            Task.this.onDone();
                        }
                    });
                }
            }
        }

        public Task<T> setDeliver(Executor executor) {
            this.deliver = executor;
            return this;
        }

        public Task<T> setTimeout(long j, a aVar) {
            this.mTimeoutMillis = j;
            return this;
        }

        public void cancel(boolean z) {
            synchronized (this.state) {
                try {
                    if (this.state.get() > 1) {
                        return;
                    }
                    this.state.set(4);
                    if (z && this.runner != null) {
                        this.runner.interrupt();
                    }
                    getDeliver().execute(new Runnable() {
                        @Override
                        public void run() {
                            Task.this.onCancel();
                            Task.this.onDone();
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {
        public static final AtomicInteger b = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        public class a implements Thread.UncaughtExceptionHandler {
            public a() {
            }

            @Override
            public void uncaughtException(Thread thread, Throwable th) {
                System.out.println(th);
            }
        }

        public UtilsThreadFactory(String str, int i) {
            this(str, i, false);
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) {
                @Override
                public void run() {
                    try {
                        super.run();
                    } catch (Throwable th) {
                        Log.e("ThreadUtils", "Request threw uncaught throwable", th);
                    }
                }
            };
            thread.setDaemon(this.isDaemon);
            thread.setUncaughtExceptionHandler(new a());
            thread.setPriority(this.priority);
            return thread;
        }

        public UtilsThreadFactory(String str, int i, boolean z) {
            this.namePrefix = str + "-pool-" + b.getAndIncrement() + "-thread-";
            this.priority = i;
            this.isDaemon = z;
        }
    }

    public class a implements Executor {
        @Override
        public void execute(Runnable runnable) {
            ThreadUtils.s(runnable);
        }
    }

    public static final class b extends ThreadPoolExecutor {
        public final AtomicInteger b;
        public final LinkedBlockingQueue4Util c;

        public b(int i, int i2, long j, TimeUnit timeUnit, LinkedBlockingQueue4Util linkedBlockingQueue4Util, ThreadFactory threadFactory) {
            super(i, i2, j, timeUnit, linkedBlockingQueue4Util, threadFactory);
            this.b = new AtomicInteger();
            linkedBlockingQueue4Util.mPool = this;
            this.c = linkedBlockingQueue4Util;
        }

        public static ExecutorService b(int i, int i2) {
            if (i == -8) {
                return new b(ThreadUtils.d + 1, (ThreadUtils.d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cpu", i2));
            }
            if (i == -4) {
                return new b((ThreadUtils.d * 2) + 1, (ThreadUtils.d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("io", i2));
            }
            if (i == -2) {
                return new b(0, 128, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cached", i2));
            }
            if (i == -1) {
                return new b(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("single", i2));
            }
            return new b(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("fixed(" + i + ")", i2));
        }

        @Override
        public void afterExecute(Runnable runnable, Throwable th) {
            this.b.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        @Override
        public void execute(Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.b.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.c.offer(runnable);
            } catch (Throwable unused2) {
                this.b.decrementAndGet();
            }
        }
    }

    public static void d(ExecutorService executorService, Task task) {
        e(executorService, task, 0L, 0L, null);
    }

    public static void e(final ExecutorService executorService, final Task task, long j, long j2, TimeUnit timeUnit) {
        Map map = c;
        synchronized (map) {
            try {
                if (map.get(task) != null) {
                    Log.e("ThreadUtils", "Task can only be executed once.");
                    return;
                }
                map.put(task, executorService);
                if (j2 != 0) {
                    task.setSchedule(true);
                    e.scheduleAtFixedRate(new TimerTask() {
                        @Override
                        public void run() {
                            executorService.execute(task);
                        }
                    }, timeUnit.toMillis(j), timeUnit.toMillis(j2));
                } else if (j == 0) {
                    executorService.execute(task);
                } else {
                    e.schedule(new TimerTask() {
                        @Override
                        public void run() {
                            executorService.execute(task);
                        }
                    }, timeUnit.toMillis(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void f(Task task) {
        d(p(-2), task);
    }

    public static void g(int i, Task task) {
        d(p(i), task);
    }

    public static void h(int i, Task task, long j, TimeUnit timeUnit) {
        k(p(i), task, j, timeUnit);
    }

    public static void i(Task task) {
        d(p(-4), task);
    }

    public static void j(Task task) {
        d(p(-1), task);
    }

    public static void k(ExecutorService executorService, Task task, long j, TimeUnit timeUnit) {
        e(executorService, task, j, 0L, timeUnit);
    }

    public static ExecutorService l() {
        return p(-2);
    }

    public static Executor m() {
        if (f == null) {
            f = new a();
        }
        return f;
    }

    public static ExecutorService n() {
        return p(-4);
    }

    public static Handler o() {
        return a;
    }

    public static ExecutorService p(int i) {
        return q(i, 5);
    }

    public static ExecutorService q(int i, int i2) {
        ExecutorService executorServiceB;
        Map map = b;
        synchronized (map) {
            try {
                Map map2 = (Map) map.get(Integer.valueOf(i));
                if (map2 == null) {
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    executorServiceB = b.b(i, i2);
                    concurrentHashMap.put(Integer.valueOf(i2), executorServiceB);
                    map.put(Integer.valueOf(i), concurrentHashMap);
                } else {
                    executorServiceB = (ExecutorService) map2.get(Integer.valueOf(i2));
                    if (executorServiceB == null) {
                        executorServiceB = b.b(i, i2);
                        map2.put(Integer.valueOf(i2), executorServiceB);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorServiceB;
    }

    public static boolean r() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void s(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }

    public static void t(Runnable runnable, long j) {
        a.postDelayed(runnable, j);
    }
}
