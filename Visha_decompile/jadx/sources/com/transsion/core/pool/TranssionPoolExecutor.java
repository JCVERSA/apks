package com.transsion.core.pool;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.transsion.core.log.LogUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class TranssionPoolExecutor extends ThreadPoolExecutor {
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
            if (obj != null && comparableFutureTask.object != null && obj.getClass().equals(comparableFutureTask.object.getClass())) {
                Object obj2 = this.object;
                if (obj2 instanceof Comparable) {
                    return ((Comparable) obj2).compareTo(comparableFutureTask.object);
                }
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

    public enum UncaughtThrowableStrategy {
        IGNORE,
        LOG {
            @Override
            public void handle(Throwable th) {
                LogUtils.d("ZeroPoolExecutor", "Request threw uncaught throwable", th);
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

        public static final UncaughtThrowableStrategy DEFAULT = LOG;

        public void handle(Throwable th) {
        }

        UncaughtThrowableStrategy(a aVar) {
            this();
        }
    }

    public static class a implements FilenameFilter {
        public final Pattern b;

        public a(Pattern pattern) {
            this.b = pattern;
        }

        @Override
        public boolean accept(File file, String str) {
            return this.b.matcher(str).matches();
        }
    }

    public TranssionPoolExecutor(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z, boolean z2) {
        super(0, Integer.MAX_VALUE, 60L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(str, uncaughtThrowableStrategy, z));
        this.b = z2;
        try {
            Log.d("ThreadPool", "size is :" + getPoolSize());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int b() {
        File[] fileArrListFiles;
        try {
            fileArrListFiles = new File("/sys/devices/system/cpu/").listFiles(new a(Pattern.compile("cpu[0-9]+")));
        } catch (Throwable th) {
            LogUtils.d("ZeroPoolExecutor", "Failed to calculate accurate cpu count", th);
            fileArrListFiles = null;
        }
        return Math.min(4, Math.max(Math.max(1, Runtime.getRuntime().availableProcessors()), fileArrListFiles != null ? fileArrListFiles.length : 0));
    }

    public static TranssionPoolExecutor e() {
        return g(b(), "source", UncaughtThrowableStrategy.DEFAULT);
    }

    public static TranssionPoolExecutor g(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return new TranssionPoolExecutor(i, str, uncaughtThrowableStrategy, false, false);
    }

    public final Future d(Future future) {
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
        return d(super.submit(runnable));
    }

    @Override
    public RunnableFuture newTaskFor(Callable callable) {
        return new ComparableFutureTask(callable);
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return d(super.submit(runnable, obj));
    }

    @Override
    public Future submit(Callable callable) {
        return d(super.submit(callable));
    }
}
