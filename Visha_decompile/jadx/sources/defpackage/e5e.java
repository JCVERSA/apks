package defpackage;

import android.os.Build;

public abstract class e5e {
    public static final int a;

    static {
        a = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
