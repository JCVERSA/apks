package com.hunantv.imgo.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Px;

public class t {
    public static boolean a = false;
    public static final Uri b = Settings.System.getUriFor("screen_brightness_mode");
    public static final Uri c = Settings.System.getUriFor("screen_brightness");
    public static final Uri d = Settings.System.getUriFor("screen_auto_brightness_adj");
    private static boolean e = false;
    private static Point f = null;

    @Px
    public static int a(Context context, float f2) {
        try {
            return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int b(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean c(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation") == 0;
        } catch (Settings.SettingNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @NonNull
    public static Point d(Context context) {
        int i;
        Point point = f;
        if (point != null) {
            int i2 = point.x;
            if (i2 != 0 && (i = point.y) != 0) {
                if (i2 > i) {
                    point.y = i2;
                    point.x = i;
                }
                return point;
            }
        } else {
            f = new Point();
        }
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            defaultDisplay.getMetrics(new DisplayMetrics());
            Point point2 = new Point();
            defaultDisplay.getRealSize(point2);
            int i3 = point2.x;
            int i4 = point2.y;
            Point point3 = f;
            point3.x = i3;
            point3.y = i4;
            if (i3 > i4) {
                point3.y = i3;
                point3.x = i4;
            }
            return point3;
        } catch (Exception unused) {
            f.x = a(context);
            f.y = b(context);
            Point point4 = f;
            int i5 = point4.x;
            int i6 = point4.y;
            if (i5 > i6) {
                point4.y = i5;
                point4.x = i6;
            }
            return point4;
        }
    }

    public static int a(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static void a(Activity activity) {
        if (activity == null) {
            return;
        }
        activity.getWindow().addFlags(128);
    }

    public static void a(Activity activity, boolean z) {
        int i;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z) {
                i = systemUiVisibility | 5638;
                activity.getWindow().addFlags(512);
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                activity.getWindow().setAttributes(attributes);
            } else {
                i = systemUiVisibility & (-1543);
                activity.getWindow().clearFlags(512);
                WindowManager.LayoutParams attributes2 = activity.getWindow().getAttributes();
                attributes2.layoutInDisplayCutoutMode = 0;
                activity.getWindow().setAttributes(attributes2);
            }
            decorView.setSystemUiVisibility(i);
        } catch (Throwable unused) {
        }
    }
}
