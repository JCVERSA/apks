package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public final class hk {
    public static HandlerThread b;
    public static volatile boolean d;
    public static Handler e;
    public static final hk a = new hk();
    public static final String c = "athena track thread";

    public final synchronized HandlerThread a() {
        try {
            if (b == null) {
                synchronized (hk.class) {
                    try {
                        if (b == null) {
                            b = new HandlerThread(c);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return b;
    }

    public final synchronized void b() {
        if (e == null) {
            b = a();
            c();
            HandlerThread handlerThread = b;
            y45.g(handlerThread);
            e = new Handler(handlerThread.getLooper());
        }
    }

    public final synchronized void c() {
        HandlerThread handlerThread;
        if (!d && (handlerThread = b) != null) {
            y45.g(handlerThread);
            handlerThread.start();
            d = !d;
        }
    }

    public final void d(Runnable runnable) {
        y45.j(runnable, "runnable");
        if (!y45.e(Looper.myLooper(), Looper.getMainLooper())) {
            runnable.run();
            return;
        }
        b();
        Handler handler = e;
        if (handler != null) {
            y45.g(handler);
            handler.post(runnable);
        }
    }
}
