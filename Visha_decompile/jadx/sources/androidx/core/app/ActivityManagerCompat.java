package androidx.core.app;

import android.app.ActivityManager;
import androidx.annotation.NonNull;
import androidx.annotation.ReplaceWith;

public final class ActivityManagerCompat {
    private ActivityManagerCompat() {
    }

    @ReplaceWith(expression = "activityManager.isLowRamDevice()")
    @Deprecated
    public static boolean isLowRamDevice(@NonNull ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
