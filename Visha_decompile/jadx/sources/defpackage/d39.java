package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class d39 {
    public static int a(Context context, float f) {
        return (int) (TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int b(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int c(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int d(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }
}
