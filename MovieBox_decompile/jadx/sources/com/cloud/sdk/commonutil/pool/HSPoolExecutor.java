package com.cloud.sdk.commonutil.pool;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.cloud.sdk.commonutil.util.c;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class HSPoolExecutor extends ThreadPoolExecutor {

    private final boolean f22483a;

    protected class ComparableFutureTask<V> extends FutureTask<V> implements Comparable<ComparableFutureTask<V>> {
        private Object object;

        public ComparableFutureTask(Callable<V> callable) {
            super(callable);
            this.object = callable;
        }

        @Override
        public int compareTo(ComparableFutureTask<V> comparableFutureTask) {
            if (this == comparableFutureTask) {
                return 0;
            }
            if (comparableFutureTask == null) {
                return -1;
            }
            Object obj = this.object;
            if (obj == null || comparableFutureTask.object == null || !obj.getClass().equals(comparableFutureTask.object.getClass())) {
                return 0;
            }
            Object obj2 = this.object;
            if (obj2 instanceof Comparable) {
                return ((Comparable) obj2).compareTo(comparableFutureTask.object);
            }
            return 0;
        }

        public ComparableFutureTask(Runnable runnable, V v10) {
            super(runnable, v10);
            this.object = runnable;
        }
    }

    private static final class DefaultThreadFactory implements ThreadFactory {

        private final String f22484a;

        private final UncaughtThrowableStrategy f22485b;

        private final boolean f22486c;

        private int f22487d;

        DefaultThreadFactory(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10) {
            this.f22484a = str;
            this.f22485b = uncaughtThrowableStrategy;
            this.f22486c = z10;
        }

        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "zero-" + this.f22484a + "-thread-" + this.f22487d) {
                @Override
                public void run() {
                    Process.setThreadPriority(10);
                    if (DefaultThreadFactory.this.f22486c) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th2) {
                        DefaultThreadFactory.this.f22485b.handle(th2);
                    }
                }
            };
            this.f22487d = this.f22487d + 1;
            return thread;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy, still in use, count: 1, list:
      (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) from 0x0024: SPUT (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) (LINE:37) com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.DEFAULT com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class UncaughtThrowableStrategy {
        IGNORE,
        LOG {
            @Override
            protected void handle(Throwable th2) {
                c.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th2));
            }
        },
        THROW {
            @Override
            protected void handle(Throwable th2) {
                super.handle(th2);
                if (th2 != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th2);
                }
            }
        };

        public static final UncaughtThrowableStrategy DEFAULT = new UncaughtThrowableStrategy() {
            @Override
            protected void handle(Throwable th2) {
                c.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th2));
            }
        };

        static {
        }

        UncaughtThrowableStrategy(String str, int i10, a aVar) {
            this();
        }

        public static UncaughtThrowableStrategy valueOf(String str) {
            return (UncaughtThrowableStrategy) Enum.valueOf(UncaughtThrowableStrategy.class, str);
        }

        public static UncaughtThrowableStrategy[] values() {
            return (UncaughtThrowableStrategy[]) $VALUES.clone();
        }

        private UncaughtThrowableStrategy() {
            super(str, i);
        }

        protected void handle(Throwable th2) {
        }
    }

    public HSPoolExecutor(int i10, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10, boolean z11) {
        super(0, Integer.MAX_VALUE, 60L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(str, uncaughtThrowableStrategy, z10));
        this.f22483a = z11;
        try {
            c.Log().d("ssp", "HSPoolExecutor init, poolSize=" + getPoolSize());
        } catch (Exception e10) {
            c.Log().e("ssp", "HSPoolExecutor init error: " + Log.getStackTraceString(e10));
        }
    }

    private Future a(Future future) {
        if (this.f22483a) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        }
        return future;
    }

    public static HSPoolExecutor b() {
        return new HSPoolExecutor(20, "zero", UncaughtThrowableStrategy.DEFAULT, false, false);
    }

    @Override
    public void execute(Runnable runnable) {
        if (this.f22483a) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }

    @Override
    protected RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return new ComparableFutureTask(runnable, obj);
    }

    @Override
    public Future submit(Runnable runnable) {
        return a(super.submit(runnable));
    }

    @Override
    protected RunnableFuture newTaskFor(Callable callable) {
        return new ComparableFutureTask(callable);
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return a(super.submit(runnable, obj));
    }

    @Override
    public Future submit(Callable callable) {
        return a(super.submit(callable));
    }
}
