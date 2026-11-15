package defpackage;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class yt8 {
    public static int a(String str, Resources resources, int i) {
        int identifier = resources.getIdentifier(str, "dimen", ConstantDeviceInfo.APP_PLATFORM);
        return identifier != 0 ? resources.getDimensionPixelSize(identifier) : c(i, resources.getDisplayMetrics());
    }

    public static int b(String str, Resources resources) {
        return a(str, resources, 48);
    }

    public static int c(float f, DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(1, f, displayMetrics));
    }
}
