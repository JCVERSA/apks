package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;

public abstract class mcc {
    public static Rect a;

    public static Rect a(Context context) {
        DisplayMetrics displayMetrics;
        try {
            if (a == null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                a = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }

    public static Rect b(View view) {
        int[] iArr = {Integer.MAX_VALUE, Integer.MAX_VALUE};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    public static boolean c(View view) {
        try {
            PowerManager powerManager = (PowerManager) view.getContext().getSystemService("power");
            return ((Boolean) powerManager.getClass().getMethod("isScreenOn", null).invoke(powerManager, null)).booleanValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }
}
