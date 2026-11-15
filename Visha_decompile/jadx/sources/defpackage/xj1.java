package defpackage;

import android.content.Context;
import com.transsion.core.deviceinfo.DeviceInfo;

public abstract class xj1 {
    public static Context a = null;
    public static boolean b = false;
    public static boolean c = false;
    public static boolean d = false;

    public static Context a() {
        Context context = a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (d()) {
            return;
        }
        d = true;
        a = context.getApplicationContext();
        DeviceInfo.d();
        sg9.a(a());
    }

    public static boolean c() {
        return b;
    }

    public static boolean d() {
        return d && a != null;
    }

    public static boolean e() {
        return c;
    }

    public static void f(boolean z) {
        b = z;
    }
}
