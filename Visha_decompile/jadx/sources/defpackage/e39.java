package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.TypedValue;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class e39 {
    public static boolean a;

    public static int a(Context context, float f) {
        return (int) (TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int b(Context context) {
        if (!f(context)) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static int c(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int d(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int e(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static boolean f(Context context) {
        return !g(context) && a;
    }

    public static boolean g(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }
}
