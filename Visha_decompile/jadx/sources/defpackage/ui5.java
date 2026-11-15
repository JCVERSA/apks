package defpackage;

import android.util.Log;

public abstract class ui5 {
    public static boolean a = false;
    public static boolean b = false;

    public static boolean a() {
        if (b) {
            return a;
        }
        boolean z = true;
        b = true;
        try {
            String packageName = ul4.a().getPackageName();
            if (packageName == null) {
                return a;
            }
            ja1.Log().d("LauncherUtil", "isLauncherHost: packageName = " + packageName);
            if (!packageName.equals("com.transsion.launcher") && !packageName.equals("com.transsion.XOSlauncher")) {
                z = false;
            }
            a = z;
            return z;
        } catch (Exception e) {
            ja1.Log().e("LauncherUtil", "isLauncherHost: " + Log.getStackTraceString(e));
            return a;
        }
    }
}
