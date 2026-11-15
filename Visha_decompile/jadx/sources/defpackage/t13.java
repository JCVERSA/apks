package defpackage;

import com.lzy.okserver.task.PriorityBlockingQueue;
import com.lzy.okserver.task.XExecutor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class t13 {
    public static final TimeUnit c = TimeUnit.HOURS;
    public int a = 3;
    public XExecutor b;

    public XExecutor a() {
        if (this.b == null) {
            synchronized (t13.class) {
                try {
                    if (this.b == null) {
                        this.b = new XExecutor(this.a, 5, 1L, c, new PriorityBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
