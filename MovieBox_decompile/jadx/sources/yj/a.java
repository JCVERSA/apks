package yj;

import android.content.Context;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.utils.f;

public abstract class a {

    private static Context f76267a;

    private static boolean f76268b;

    private static boolean f76269c;

    private static boolean f76270d;

    public static Context a() {
        Context context = f76267a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (d()) {
            return;
        }
        f76270d = true;
        f76267a = context.getApplicationContext();
        DeviceInfo.d();
        f.a(a());
    }

    public static boolean c() {
        return f76268b;
    }

    public static boolean d() {
        return f76270d && f76267a != null;
    }

    public static boolean e() {
        return f76269c;
    }

    public static void f(boolean z10) {
        f76268b = z10;
    }
}
