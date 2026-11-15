package x0;

import android.content.pm.PackageInfo;
import android.os.Build;

public abstract class a {

    private static class C0937a {
        static long a(PackageInfo packageInfo) {
            return packageInfo.getLongVersionCode();
        }
    }

    public static long a(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? C0937a.a(packageInfo) : packageInfo.versionCode;
    }
}
