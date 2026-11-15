package defpackage;

import android.app.Activity;

public abstract class ev9 {
    public static boolean a(Activity activity) {
        if (activity == null) {
            return false;
        }
        String simpleName = activity.getClass().getSimpleName();
        return "TRSplashActivity".equals(simpleName) || "SplashActivity".equals(simpleName) || "MarketingSplashActivity".equals(simpleName) || simpleName.endsWith("MediaAdsActivity");
    }
}
