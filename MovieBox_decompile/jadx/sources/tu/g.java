package tu;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

public abstract class g {

    public static boolean f72839a;

    public static long f72840b;

    public static void a(String msg) {
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        c();
        boolean z10 = qu.f.f70259o.a().f70264d;
    }

    public static void b(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        c();
        boolean z10 = qu.f.f70259o.a().f70264d;
    }

    public static boolean c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z10 = f72839a;
        if (z10 || jCurrentTimeMillis - f72840b < 5000) {
            return z10;
        }
        f72840b = jCurrentTimeMillis;
        if (Log.isLoggable("upgradeSdkLog", 3)) {
            f72839a = true;
        }
        return f72839a;
    }
}
