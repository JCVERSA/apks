package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.Callable;

public abstract class b {

    private static final Scheduler f62311a = wx.a.d(new Callable() {
        @Override
        public final Object call() {
            return b.a.f62312a;
        }
    });

    static final class a {

        static final Scheduler f62312a = new HandlerScheduler(new Handler(Looper.getMainLooper()), true);
    }

    public static Scheduler c() {
        return wx.a.e(f62311a);
    }
}
