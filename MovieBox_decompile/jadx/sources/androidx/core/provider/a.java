package androidx.core.provider;

import android.os.Handler;
import android.os.Looper;

abstract class a {
    static Handler a() {
        return Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
    }
}
