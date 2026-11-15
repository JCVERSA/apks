package defpackage;

import android.os.Handler;
import android.os.Looper;

public abstract class j4d {
    public static Looper a() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return mainLooper;
        }
        try {
            Looper.prepareMainLooper();
            return Looper.getMainLooper();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean b(Runnable runnable) {
        Looper looperA;
        if (runnable == null || (looperA = a()) == null) {
            return false;
        }
        if (Thread.currentThread() == looperA.getThread()) {
            runnable.run();
            return true;
        }
        new Handler(looperA).post(runnable);
        return true;
    }

    public static boolean c(Runnable runnable, long j) {
        if (runnable == null) {
            return false;
        }
        if (j <= 0) {
            return b(runnable);
        }
        Looper looperA = a();
        if (looperA == null) {
            return false;
        }
        new Handler(looperA).postDelayed(runnable, j);
        return true;
    }

    public static boolean d() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
