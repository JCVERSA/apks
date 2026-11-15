package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public abstract class f5 {
    public static Bundle a(Context context) {
        boolean zB;
        Bundle bundle = new Bundle();
        try {
            zB = b39.b(context);
        } catch (Exception e) {
            Log.w("ActivityFragmentUtils", "isFoldScreen failed, skip overlay orientation: " + e);
            zB = false;
        }
        if (!zB) {
            bundle.putInt("tran:activity.orientation.overlay", -1);
        }
        return bundle;
    }

    public static void b(Intent intent, int i, Activity activity) {
        try {
            activity.startActivityForResult(intent, i, a(activity));
        } catch (Exception e) {
            Log.e("ActivityFragmentUtils", "startActivityForResultOverlay " + e);
        }
    }

    public static void c(Intent intent, Context context) {
        try {
            context.startActivity(intent, a(context));
        } catch (Exception e) {
            Log.e("ActivityFragmentUtils", "startActivityOverlayOrientation " + e);
        }
    }

    public static void d(Intent intent, Context context, int i) {
        try {
            context.startActivity(intent, a(context));
            if (context instanceof Activity) {
                ((Activity) context).overridePendingTransition(i, 0);
            }
        } catch (Exception e) {
            Log.e("ActivityFragmentUtils", "startActivityOverlayOrientation " + e);
        }
    }

    public static void e(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            Log.w("ActivityFragmentUtils", "switchToLandscape: activity is null or destroyed");
        } else if (activity.getRequestedOrientation() != 6) {
            activity.setRequestedOrientation(6);
        }
    }

    public static void f(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            Log.w("ActivityFragmentUtils", "switchToPortrait: activity is null or destroyed");
        } else if (activity.getRequestedOrientation() != 1) {
            activity.setRequestedOrientation(1);
        }
    }

    public static void g(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            Log.w("ActivityFragmentUtils", "switchToSystemOrientation: activity is null or destroyed");
        } else if (activity.getRequestedOrientation() != -1) {
            activity.setRequestedOrientation(-1);
        }
    }
}
