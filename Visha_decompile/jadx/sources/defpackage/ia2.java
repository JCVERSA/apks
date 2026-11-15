package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.b;

public abstract class ia2 {
    public static Boolean a;
    public static Boolean b;
    public static Boolean c;
    public static Boolean d;
    public static Boolean e;
    public static Boolean f;

    public static boolean a(Context context) {
        return k(context.getPackageManager());
    }

    public static boolean b(Context context) {
        if (f == null) {
            boolean z = false;
            if (d28.j() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z = true;
            }
            f = Boolean.valueOf(z);
        }
        return f.booleanValue();
    }

    public static boolean c(Context context) {
        if (c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            c = Boolean.valueOf(z);
        }
        return c.booleanValue();
    }

    public static boolean d(Context context) {
        return i(context);
    }

    public static boolean e() {
        int i = b.a;
        return "user".equals(Build.TYPE);
    }

    public static boolean f(Context context) {
        return h(context.getPackageManager());
    }

    public static boolean g(Context context) {
        if (f(context) && !d28.f()) {
            return true;
        }
        if (i(context)) {
            return !d28.g() || d28.j();
        }
        return false;
    }

    public static boolean h(PackageManager packageManager) {
        if (a == null) {
            a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return a.booleanValue();
    }

    public static boolean i(Context context) {
        if (b == null) {
            b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return b.booleanValue();
    }

    public static boolean j(Context context) {
        if (d == null) {
            d = Boolean.valueOf(d28.g() ? context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") : context.getPackageManager().hasSystemFeature("android.hardware.type.iot"));
        }
        return d.booleanValue();
    }

    public static boolean k(PackageManager packageManager) {
        if (e == null) {
            boolean z = false;
            if (d28.g() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            }
            e = Boolean.valueOf(z);
        }
        return e.booleanValue();
    }
}
