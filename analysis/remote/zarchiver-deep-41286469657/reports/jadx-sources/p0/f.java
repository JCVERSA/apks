package p0;

import android.os.Build;
import h0.h;

public final class f {
    public static boolean a(h hVar) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        String str = hVar.f1108c;
        return str.startsWith("/data/") || str.startsWith("/sys/") || str.startsWith("/system/");
    }
}
