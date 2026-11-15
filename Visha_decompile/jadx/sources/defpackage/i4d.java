package defpackage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class i4d {
    public static i4d c;
    public ExecutorService a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), new hxd("mgmi_i"));
    public ExecutorService b = new ThreadPoolExecutor(3, 3, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new hxd("mgmi_d"));

    public static i4d a() {
        if (c == null) {
            synchronized (i4d.class) {
                try {
                    if (c == null) {
                        c = new i4d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public void b(Runnable runnable) {
        ExecutorService executorService = this.a;
        if (executorService != null) {
            executorService.execute(runnable);
        }
    }

    public ExecutorService c() {
        return this.a;
    }

    public ExecutorService d() {
        return this.b;
    }
}
