package com.transsion.core.pool;

import android.os.Process;
import android.os.StrictMode;
import com.cloud.tmc.integration.event.EventConstants;
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

    private final boolean f42883a;

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
            if (obj != null && comparableFutureTask.object != null && obj.getClass().equals(comparableFutureTask.object.getClass())) {
                Object obj2 = this.object;
                if (obj2 instanceof Comparable) {
                    return ((Comparable) obj2).compareTo(comparableFutureTask.object);
                }
            }
            return 0;
        }

        public ComparableFutureTask(Runnable runnable, V v10) {
            super(runnable, v10);
            this.object = runnable;
        }
    }

    private static final class DefaultThreadFactory implements ThreadFactory {

        private final String f42884a;

        private final UncaughtThrowableStrategy f42885b;

        private final boolean f42886c;

        private int f42887d;

        DefaultThreadFactory(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10) {
            this.f42884a = str;
            this.f42885b = uncaughtThrowableStrategy;
            this.f42886c = z10;
        }

        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "zero-" + this.f42884a + "-thread-" + this.f42887d) {
                @Override
                public void run() {
                    Process.setThreadPriority(10);
                    if (DefaultThreadFactory.this.f42886c) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th2) {
                        DefaultThreadFactory.this.f42885b.handle(th2);
                    }
                }
            };
            this.f42887d = this.f42887d + 1;
            return thread;
        }
    }

    public enum UncaughtThrowableStrategy {
        IGNORE,
        LOG {
            @Override
            protected void handle(Throwable th2) {
                LogUtils.d("ZeroPoolExecutor", "Request threw uncaught throwable", th2);
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

        public static final UncaughtThrowableStrategy DEFAULT = LOG;

        protected void handle(Throwable th2) {
        }

        UncaughtThrowableStrategy(a aVar) {
            this();
        }
    }

    static class a implements FilenameFilter {

        final Pattern f42888a;

        a(Pattern pattern) {
            this.f42888a = pattern;
        }

        @Override
        public boolean accept(File file, String str) {
            return this.f42888a.matcher(str).matches();
        }
    }

    public TranssionPoolExecutor(int i10, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10, boolean z11) {
        super(0, Integer.MAX_VALUE, 60L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(str, uncaughtThrowableStrategy, z10));
        this.f42883a = z11;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("size is :");
            sb2.append(getPoolSize());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int a() {
        File[] fileArrListFiles;
        try {
            fileArrListFiles = new File("/sys/devices/system/cpu/").listFiles(new a(Pattern.compile("cpu[0-9]+")));
        } catch (Throwable th2) {
            LogUtils.d("ZeroPoolExecutor", "Failed to calculate accurate cpu count", th2);
            fileArrListFiles = null;
        }
        return Math.min(4, Math.max(Math.max(1, Runtime.getRuntime().availableProcessors()), fileArrListFiles != null ? fileArrListFiles.length : 0));
    }

    private Future b(Future future) {
        if (this.f42883a) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        }
        return future;
    }

    public static TranssionPoolExecutor c() {
        return d(a(), EventConstants.KEY_SOURCE, UncaughtThrowableStrategy.DEFAULT);
    }

    public static TranssionPoolExecutor d(int i10, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return new TranssionPoolExecutor(i10, str, uncaughtThrowableStrategy, false, false);
    }

    @Override
    public void execute(Runnable runnable) {
        if (this.f42883a) {
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
        return b(super.submit(runnable));
    }

    @Override
    protected RunnableFuture newTaskFor(Callable callable) {
        return new ComparableFutureTask(callable);
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return b(super.submit(runnable, obj));
    }

    @Override
    public Future submit(Callable callable) {
        return b(super.submit(callable));
    }
}
