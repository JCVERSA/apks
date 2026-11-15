package defpackage;

import android.content.res.Resources;
import android.util.Log;

public final class w70 {
    public static final w70 a = new w70();
    public static boolean b;

    public final int a(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public final int b(int i) {
        return 500 - (500 % i);
    }

    public final int c(int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        return (i + i2) % i2;
    }

    public final void d(String str) {
        if (b) {
            e("BVP", str);
        }
    }

    public final void e(String str, String str2) {
        if (b) {
            y45.g(str2);
            Log.e(str, str2);
        }
    }
}
