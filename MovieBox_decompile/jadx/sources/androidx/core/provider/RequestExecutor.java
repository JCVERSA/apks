package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

abstract class RequestExecutor {

    private static class DefaultThreadFactory implements ThreadFactory {

        private String f7872a;

        private int f7873b;

        private static class ProcessPriorityThread extends Thread {
            private final int mPriority;

            ProcessPriorityThread(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.mPriority = i10;
            }

            @Override
            public void run() {
                Process.setThreadPriority(this.mPriority);
                super.run();
            }
        }

        DefaultThreadFactory(String str, int i10) {
            this.f7872a = str;
            this.f7873b = i10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new ProcessPriorityThread(runnable, this.f7872a, this.f7873b);
        }
    }

    private static class ReplyRunnable<T> implements Runnable {
        private Callable<T> mCallable;
        private androidx.core.util.a mConsumer;
        private Handler mHandler;

        ReplyRunnable(Handler handler, Callable<T> callable, androidx.core.util.a aVar) {
            this.mCallable = callable;
            this.mConsumer = aVar;
            this.mHandler = handler;
        }

        @Override
        public void run() {
            final T tCall;
            try {
                tCall = this.mCallable.call();
            } catch (Exception unused) {
                tCall = null;
            }
            final androidx.core.util.a aVar = this.mConsumer;
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    aVar.accept(tCall);
                }
            });
        }
    }

    private static class a implements Executor {

        private final Handler f7874a;

        a(Handler handler) {
            this.f7874a = (Handler) androidx.core.util.i.g(handler);
        }

        @Override
        public void execute(Runnable runnable) {
            if (this.f7874a.post((Runnable) androidx.core.util.i.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f7874a + " is shutting down");
        }
    }

    static ThreadPoolExecutor a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new DefaultThreadFactory(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static Executor b(Handler handler) {
        return new a(handler);
    }

    static void c(Executor executor, Callable callable, androidx.core.util.a aVar) {
        executor.execute(new ReplyRunnable(androidx.core.provider.a.a(), callable, aVar));
    }

    static Object d(ExecutorService executorService, Callable callable, int i10) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
