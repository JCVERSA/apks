package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.core.content.ContextCompat;
import androidx.core.content.PermissionChecker;

public abstract class i2d {
    public static int a = -1;

    public static int a(Context context) {
        return b(context, "android.permission.WRITE_EXTERNAL_STORAGE") ? 3 : 1;
    }

    public static boolean b(Context context, String str) {
        int i = a;
        if (i != -1) {
            try {
                if (i >= 23) {
                    return ContextCompat.checkSelfPermission(context, str) == 0;
                }
                return PermissionChecker.checkSelfPermission(context, str) == 0;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        try {
            int i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
            a = i2;
            if (i2 >= 23) {
                return ContextCompat.checkSelfPermission(context, str) == 0;
            }
            return PermissionChecker.checkSelfPermission(context, str) == 0;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
