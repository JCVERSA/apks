package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ProfileInstallerInitializer implements d4.a {

    private static class a {
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    public static class b {
    }

    public void h(Context context, long j10) {
        g(context);
    }

    public static void k(final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() {
            @Override
            public final void run() {
                h.i(context);
            }
        });
    }

    @Override
    public List a() {
        return Collections.emptyList();
    }

    @Override
    public b b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new b();
        }
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j10) {
                this.f13739a.h(applicationContext, j10);
            }
        });
        return new b();
    }

    void g(final Context context) {
        (Build.VERSION.SDK_INT >= 28 ? a.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new Runnable() {
            @Override
            public final void run() {
                ProfileInstallerInitializer.k(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }
}
