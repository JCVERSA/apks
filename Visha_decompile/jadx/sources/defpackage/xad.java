package defpackage;

import android.content.Context;
import android.provider.Settings;

public abstract class xad {
    public static boolean a() {
        return true;
    }

    public static boolean b(Context context) {
        if (c()) {
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    public static boolean c() {
        return true;
    }

    public static boolean d(Context context) {
        if (a()) {
            return Settings.canDrawOverlays(context);
        }
        return true;
    }
}
