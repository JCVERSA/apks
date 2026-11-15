package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

public abstract class t81 {
    public static void a(Activity activity) {
        if (activity == null || !b(activity)) {
            return;
        }
        activity.getWindow().setColorMode(1);
    }

    public static boolean b(Context context) {
        Display displayD;
        return context != null && c() && (displayD = d(context)) != null && displayD.isWideColorGamut() && context.getResources().getConfiguration().isScreenWideColorGamut();
    }

    public static boolean c() {
        return pp3.v;
    }

    public static Display d(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getWindowManager().getDefaultDisplay();
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return windowManager.getDefaultDisplay();
        }
        return null;
    }
}
