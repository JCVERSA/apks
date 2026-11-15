package defpackage;

import com.transsion.core.pool.TranssionPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

public class ht4 implements yc8 {
    public static volatile ht4 b;
    public ThreadPoolExecutor a;

    public static ht4 b() {
        if (b == null) {
            synchronized (ht4.class) {
                try {
                    if (b == null) {
                        b = new ht4();
                        b.a = TranssionPoolExecutor.e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    @Override
    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.a.prestartAllCoreThreads();
            }
            this.a.execute(runnable);
        }
    }
}
