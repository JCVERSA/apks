package defpackage;

import android.content.Context;
import android.os.Looper;

public final class b7e {
    public b7e(Context context) {
    }

    public static final boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
