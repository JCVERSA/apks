package defpackage;

import android.os.Looper;
import android.util.Log;

public abstract class aj {
    public static void a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String strValueOf = String.valueOf(Thread.currentThread());
        String strValueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 56 + strValueOf2.length() + 1);
        sb.append("checkMainThread: current thread ");
        sb.append(strValueOf);
        sb.append(" IS NOT the main thread ");
        sb.append(strValueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }

    public static void b(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String strValueOf = String.valueOf(Thread.currentThread());
        String strValueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 55 + strValueOf2.length() + 1);
        sb.append("checkNotMainThread: current thread ");
        sb.append(strValueOf);
        sb.append(" IS the main thread ");
        sb.append(strValueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        throw new IllegalStateException(str);
    }
}
