package androidx.compose.ui.platform;

import android.os.Looper;

public abstract class j0 {
    public static final boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
