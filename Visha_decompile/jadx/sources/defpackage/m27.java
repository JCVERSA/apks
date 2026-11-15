package defpackage;

import android.content.Context;
import com.tencent.mmkv.MMKV;

public abstract class m27 {
    public static boolean a = false;
    public static int b = 0;
    public static boolean c = true;

    public static boolean a(Context context) {
        return false;
    }

    public static void b(Context context, int i) {
    }

    public static void c(int i) {
        b = i;
    }

    public static void d(boolean z) {
        a = z;
    }

    public static void e(boolean z) {
        c = z;
    }

    public static void f() {
        MMKV.p().u("last_show_time", System.currentTimeMillis());
    }

    public static void g() {
        MMKV.p().u("notification_show_t", ((long) MMKV.p().g("notification_show_t", 0)) + 1);
    }
}
