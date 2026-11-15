package com.transsion.arch.threads;

import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.arch.threads.TaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class TaskExecutor {
    public static final int a;
    public static final int b;
    public static final int c;
    public static final ThreadPoolExecutor d;
    public static final ThreadPoolExecutor e;
    public static final ThreadPoolExecutor f;
    public static final Executor g;

    public static abstract class Task<T> implements Runnable {
        Runnable mCallback = new Runnable() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void run() {
                Task task = Task.this;
                task.onResult(task.mResult);
            }
        };
        public Object mData;
        private T mResult;

        public abstract T onBackground();

        public void onResult(T t) {
        }

        @Override
        public final void run() {
            this.mResult = onBackground();
            ThreadUtils.o().post(this.mCallback);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        int iMax = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        b = iMax;
        int i = (iAvailableProcessors * 2) + 1;
        c = i;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, i, 30L, timeUnit, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        d = threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(iMax, i, 30L, timeUnit, new LinkedBlockingQueue());
        e = threadPoolExecutor2;
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 2, 30L, timeUnit, new LinkedBlockingQueue());
        f = threadPoolExecutor3;
        threadPoolExecutor3.allowCoreThreadTimeOut(true);
        g = new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                TaskExecutor.d(runnable);
            }
        };
    }

    public static Executor b() {
        return d;
    }

    public static void c(Runnable runnable) {
        d.execute(runnable);
    }

    public static void d(Runnable runnable) {
        ThreadUtils.o().post(runnable);
    }

    public static Executor e() {
        return e;
    }

    public static Executor f() {
        return f;
    }
}
