package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public final class jv7 {
    public final Context a;

    public jv7(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final PackageInfo a() {
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            return packageManager.getPackageInfo(this.a.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            c.d.w(c.c, "Failed to find PackageInfo for current App : " + this.a.getPackageName());
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    public final boolean b(String str) {
        y45.j(str, "permission");
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            return packageManager.checkPermission(str, this.a.getPackageName()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
