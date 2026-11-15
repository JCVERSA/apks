package com.cloud.sdk.commonutil.util;

import android.util.Log;

public abstract class l {

    private static boolean f22541a = false;

    private static boolean f22542b = false;

    public static boolean a() {
        if (f22542b) {
            return f22541a;
        }
        boolean z10 = true;
        f22542b = true;
        try {
            String packageName = e.a().getPackageName();
            if (packageName == null) {
                return f22541a;
            }
            c.Log().d("LauncherUtil", "isLauncherHost: packageName = " + packageName);
            if (!packageName.equals("com.transsion.launcher") && !packageName.equals("com.transsion.XOSlauncher")) {
                z10 = false;
            }
            f22541a = z10;
            return z10;
        } catch (Exception e10) {
            c.Log().e("LauncherUtil", "isLauncherHost: " + Log.getStackTraceString(e10));
            return f22541a;
        }
    }
}
