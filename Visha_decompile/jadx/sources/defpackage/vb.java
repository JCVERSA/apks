package defpackage;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.HandlerScheduler;
import java.util.concurrent.Callable;

public abstract class vb {
    public static final Scheduler a = vw8.d(new a());

    public static class a implements Callable {
        @Override
        public Scheduler call() {
            return b.a;
        }
    }

    public static final class b {
        public static final Scheduler a = new HandlerScheduler(new Handler(Looper.getMainLooper()), false);
    }

    public static Scheduler a() {
        return vw8.e(a);
    }
}
