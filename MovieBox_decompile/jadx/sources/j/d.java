package j;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class d extends e {

    private final Object f62842a = new Object();

    private final ExecutorService f62843b = Executors.newFixedThreadPool(4, new a());

    private volatile Handler f62844c;

    class a implements ThreadFactory {

        private final AtomicInteger f62845a = new AtomicInteger(0);

        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("arch_disk_io_" + this.f62845a.getAndIncrement());
            return thread;
        }
    }

    private static class b {
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    private static Handler e(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return b.a(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }

    @Override
    public void a(Runnable runnable) {
        this.f62843b.execute(runnable);
    }

    @Override
    public boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override
    public void d(Runnable runnable) {
        if (this.f62844c == null) {
            synchronized (this.f62842a) {
                try {
                    if (this.f62844c == null) {
                        this.f62844c = e(Looper.getMainLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f62844c.post(runnable);
    }
}
