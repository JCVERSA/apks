package com.blankj.utilcode.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
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

public final class ThreadUtils {

    private static final Handler f19421a = new Handler(Looper.getMainLooper());

    private static final Map f19422b = new HashMap();

    private static final Map f19423c = new ConcurrentHashMap();

    private static final int f19424d = Runtime.getRuntime().availableProcessors();

    private static final Timer f19425e = new Timer();

    private static Executor f19426f;

    class AnonymousClass1 extends TimerTask {
        final ExecutorService val$pool;
        final Task val$task;

        AnonymousClass1(ExecutorService executorService, Task task) {
            this.val$pool = executorService;
            this.val$task = task;
        }

        @Override
        public void run() {
            this.val$pool.execute(this.val$task);
        }
    }

    class AnonymousClass2 extends TimerTask {
        final ExecutorService val$pool;
        final Task val$task;

        AnonymousClass2(ExecutorService executorService, Task task) {
            this.val$pool = executorService;
            this.val$task = task;
        }

        @Override
        public void run() {
            this.val$pool.execute(this.val$task);
        }
    }

    private static final class LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile b mPool;

        LinkedBlockingQueue4Util() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        @Override
        public boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }

        LinkedBlockingQueue4Util(boolean z10) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z10) {
                this.mCapacity = 0;
            }
        }

        LinkedBlockingQueue4Util(int i10) {
            this.mCapacity = i10;
        }
    }

    public static abstract class SimpleTask<T> extends Task<T> {
        @Override
        public void onCancel() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override
        public void onFail(Throwable th2) {
            Log.e("ThreadUtils", "onFail: ", th2);
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

        class AnonymousClass1 extends TimerTask {
            AnonymousClass1() {
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

        static a access$400(Task task) {
            task.getClass();
            return null;
        }

        private Executor getDeliver() {
            Executor executor = this.deliver;
            return executor == null ? ThreadUtils.e() : executor;
        }

        public void setSchedule(boolean z10) {
            this.isSchedule = z10;
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
                } catch (Throwable th2) {
                    throw th2;
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

        protected void onDone() {
            ThreadUtils.f19423c.remove(this);
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer = null;
            }
        }

        public abstract void onFail(Throwable th2);

        public abstract void onSuccess(T t10);

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
            } catch (Throwable th2) {
                if (this.state.compareAndSet(1, 2)) {
                    getDeliver().execute(new Runnable() {
                        @Override
                        public void run() {
                            Task.this.onFail(th2);
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

        public Task<T> setTimeout(long j10, a aVar) {
            this.mTimeoutMillis = j10;
            return this;
        }

        public void cancel(boolean z10) {
            synchronized (this.state) {
                try {
                    if (this.state.get() > 1) {
                        return;
                    }
                    this.state.set(4);
                    if (z10 && this.runner != null) {
                        this.runner.interrupt();
                    }
                    getDeliver().execute(new Runnable() {
                        @Override
                        public void run() {
                            Task.this.onCancel();
                            Task.this.onDone();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {

        private static final AtomicInteger f19427a = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        class a implements Thread.UncaughtExceptionHandler {
            a() {
            }

            @Override
            public void uncaughtException(Thread thread, Throwable th2) {
                System.out.println(th2);
            }
        }

        UtilsThreadFactory(String str, int i10) {
            this(str, i10, false);
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) {
                @Override
                public void run() {
                    try {
                        super.run();
                    } catch (Throwable th2) {
                        Log.e("ThreadUtils", "Request threw uncaught throwable", th2);
                    }
                }
            };
            thread.setDaemon(this.isDaemon);
            thread.setUncaughtExceptionHandler(new a());
            thread.setPriority(this.priority);
            return thread;
        }

        UtilsThreadFactory(String str, int i10, boolean z10) {
            this.namePrefix = str + "-pool-" + f19427a.getAndIncrement() + "-thread-";
            this.priority = i10;
            this.isDaemon = z10;
        }
    }

    class a implements Executor {
        a() {
        }

        @Override
        public void execute(Runnable runnable) {
            ThreadUtils.j(runnable);
        }
    }

    static final class b extends ThreadPoolExecutor {

        private final AtomicInteger f19429a;

        private LinkedBlockingQueue4Util f19430b;

        b(int i10, int i11, long j10, TimeUnit timeUnit, LinkedBlockingQueue4Util linkedBlockingQueue4Util, ThreadFactory threadFactory) {
            super(i10, i11, j10, timeUnit, linkedBlockingQueue4Util, threadFactory);
            this.f19429a = new AtomicInteger();
            linkedBlockingQueue4Util.mPool = this;
            this.f19430b = linkedBlockingQueue4Util;
        }

        public static ExecutorService b(int i10, int i11) {
            if (i10 == -8) {
                return new b(ThreadUtils.f19424d + 1, (ThreadUtils.f19424d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cpu", i11));
            }
            if (i10 == -4) {
                return new b((ThreadUtils.f19424d * 2) + 1, (ThreadUtils.f19424d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("io", i11));
            }
            if (i10 == -2) {
                return new b(0, 128, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cached", i11));
            }
            if (i10 == -1) {
                return new b(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("single", i11));
            }
            return new b(i10, i10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("fixed(" + i10 + ")", i11));
        }

        @Override
        protected void afterExecute(Runnable runnable, Throwable th2) {
            this.f19429a.decrementAndGet();
            super.afterExecute(runnable, th2);
        }

        @Override
        public void execute(Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.f19429a.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.f19430b.offer(runnable);
            } catch (Throwable unused2) {
                this.f19429a.decrementAndGet();
            }
        }
    }

    public static ExecutorService d() {
        return g(-2);
    }

    public static Executor e() {
        if (f19426f == null) {
            f19426f = new a();
        }
        return f19426f;
    }

    public static Handler f() {
        return f19421a;
    }

    private static ExecutorService g(int i10) {
        return h(i10, 5);
    }

    private static ExecutorService h(int i10, int i11) {
        ExecutorService executorServiceB;
        Map map = f19422b;
        synchronized (map) {
            try {
                Map map2 = (Map) map.get(Integer.valueOf(i10));
                if (map2 == null) {
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    executorServiceB = b.b(i10, i11);
                    concurrentHashMap.put(Integer.valueOf(i11), executorServiceB);
                    map.put(Integer.valueOf(i10), concurrentHashMap);
                } else {
                    executorServiceB = (ExecutorService) map2.get(Integer.valueOf(i11));
                    if (executorServiceB == null) {
                        executorServiceB = b.b(i10, i11);
                        map2.put(Integer.valueOf(i11), executorServiceB);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executorServiceB;
    }

    public static boolean i() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void j(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f19421a.post(runnable);
        }
    }

    public static void k(Runnable runnable, long j10) {
        f19421a.postDelayed(runnable, j10);
    }
}
