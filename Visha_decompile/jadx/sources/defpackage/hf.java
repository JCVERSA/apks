package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;

public abstract class hf {
    public static String a() {
        return xj1.a().getPackageName();
    }

    public static int b() {
        Context contextA = xj1.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String c() {
        Context contextA = xj1.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
