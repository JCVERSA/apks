package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.c;

public abstract class qfb {
    public static boolean a(Context context, int i) {
        if (!b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return c.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    public static boolean b(Context context, int i, String str) {
        return mpc.a(context).h(i, str);
    }
}
