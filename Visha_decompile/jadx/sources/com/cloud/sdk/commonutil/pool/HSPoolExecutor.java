package com.cloud.sdk.commonutil.pool;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import defpackage.am4;
import defpackage.ja1;
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
    public final boolean b;

    public class ComparableFutureTask<V> extends FutureTask<V> implements Comparable<ComparableFutureTask<V>> {
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

        public ComparableFutureTask(Runnable runnable, V v) {
            super(runnable, v);
            this.object = runnable;
        }
    }

    public static final class DefaultThreadFactory implements ThreadFactory {
        public final String b;
        public final UncaughtThrowableStrategy c;
        public final boolean d;
        public int e;

        public DefaultThreadFactory(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z) {
            this.b = str;
            this.c = uncaughtThrowableStrategy;
            this.d = z;
        }

        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "zero-" + this.b + "-thread-" + this.e) {
                @Override
                public void run() {
                    Process.setThreadPriority(10);
                    if (DefaultThreadFactory.this.d) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th) {
                        DefaultThreadFactory.this.c.handle(th);
                    }
                }
            };
            this.e = this.e + 1;
            return thread;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy, still in use, count: 1, list:
      (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) from 0x0024: SPUT (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.DEFAULT com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy
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
            public void handle(Throwable th) {
                ja1.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th));
            }
        },
        THROW {
            @Override
            public void handle(Throwable th) {
                super.handle(th);
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        };

        public static final UncaughtThrowableStrategy DEFAULT = new UncaughtThrowableStrategy() {
            @Override
            public void handle(Throwable th) {
                ja1.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th));
            }
        };

        static {
        }

        public UncaughtThrowableStrategy(String str, int i, am4 am4Var) {
            this();
        }

        public static UncaughtThrowableStrategy valueOf(String str) {
            return (UncaughtThrowableStrategy) Enum.valueOf(UncaughtThrowableStrategy.class, str);
        }

        public static UncaughtThrowableStrategy[] values() {
            return (UncaughtThrowableStrategy[]) $VALUES.clone();
        }

        public void handle(Throwable th) {
        }

        private UncaughtThrowableStrategy() {
            super(str, i);
        }
    }

    public HSPoolExecutor(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z, boolean z2) {
        super(0, Integer.MAX_VALUE, 60L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(str, uncaughtThrowableStrategy, z));
        this.b = z2;
        try {
            ja1.Log().d("ssp", "HSPoolExecutor init, poolSize=" + getPoolSize());
        } catch (Exception e) {
            ja1.Log().e("ssp", "HSPoolExecutor init error: " + Log.getStackTraceString(e));
        }
    }

    public static HSPoolExecutor b() {
        return new HSPoolExecutor(20, "zero", UncaughtThrowableStrategy.DEFAULT, false, false);
    }

    public final Future a(Future future) {
        if (this.b) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e) {
                throw new RuntimeException(e);
            }
        }
        return future;
    }

    @Override
    public void execute(Runnable runnable) {
        if (this.b) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }

    @Override
    public RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return new ComparableFutureTask(runnable, obj);
    }

    @Override
    public Future submit(Runnable runnable) {
        return a(super.submit(runnable));
    }

    @Override
    public RunnableFuture newTaskFor(Callable callable) {
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
