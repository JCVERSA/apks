package defpackage;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ji1 {
    public static final TimeUnit c = TimeUnit.HOURS;
    public int a = 1;
    public ThreadPoolExecutor b;

    public ThreadPoolExecutor a() {
        if (this.b == null) {
            synchronized (t13.class) {
                try {
                    if (this.b == null) {
                        this.b = new ThreadPoolExecutor(this.a, 1, 1L, c, new LinkedBlockingQueue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
