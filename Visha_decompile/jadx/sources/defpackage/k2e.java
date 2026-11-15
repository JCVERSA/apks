package defpackage;

import android.os.Build;

public abstract class k2e {
    public static final int a;

    static {
        a = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
