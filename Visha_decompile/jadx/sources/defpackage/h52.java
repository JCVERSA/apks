package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

public class h52 extends eea {
    public Handler a;
    public final Object b = new Object();
    public ExecutorService c = Executors.newFixedThreadPool(3);

    @Override
    public void a(Runnable runnable) {
        this.c.execute(runnable);
    }

    @Override
    public boolean c() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    @Override
    public void d(Runnable runnable) {
        if (this.a == null) {
            synchronized (this.b) {
                this.a = new Handler(Looper.getMainLooper());
            }
        }
        this.a.post(runnable);
    }

    @Override
    public void e(Runnable runnable) {
        ExecutorService executorService = this.c;
        if (executorService instanceof ThreadPoolExecutor) {
            ((ThreadPoolExecutor) executorService).remove(runnable);
        }
    }
}
