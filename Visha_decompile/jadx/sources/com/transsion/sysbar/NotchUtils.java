package com.transsion.sysbar;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import defpackage.b27;
import defpackage.sb7;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.lang.reflect.InvocationTargetException;

public abstract class NotchUtils {
    public static int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static DisplayCutout b(Activity activity) {
        return c(activity.getWindow().getDecorView());
    }

    public static DisplayCutout c(View view) {
        WindowInsets rootWindowInsets;
        if (view == null || (rootWindowInsets = view.getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    public static int[] d(Context context) {
        int[] iArr = {0, 0};
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return (int[]) clsLoadClass.getMethod("getNotchSize", null).invoke(clsLoadClass, null);
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return iArr;
        }
    }

    public static int e(Context context) {
        int identifier = context.getResources().getIdentifier("notch_h", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int f(Context context) {
        int identifier = context.getResources().getIdentifier("fringe_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0064 A[PHI: r1
      0x0064: PHI (r1v4 int) = (r1v3 int), (r1v7 int) binds: [B:26:0x005d, B:28:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    public static int g(Activity activity) {
        if (!r(activity)) {
            return 0;
        }
        int statusBarHeight = ImmersionBar.getStatusBarHeight(activity);
        DisplayCutout displayCutoutB = b(activity);
        if (displayCutoutB != null) {
            if (activity.getResources().getConfiguration().orientation == 1) {
                return displayCutoutB.getSafeInsetTop();
            }
            return displayCutoutB.getSafeInsetLeft() == 0 ? displayCutoutB.getSafeInsetRight() : displayCutoutB.getSafeInsetLeft();
        }
        int i = q(activity) ? i(activity) : 0;
        if (l(activity)) {
            i = d(activity)[1];
        }
        if (p(activity) && (i = a(activity, 32)) < statusBarHeight) {
            i = statusBarHeight;
        }
        if (o(activity)) {
            i = 80;
            if (80 >= statusBarHeight) {
                statusBarHeight = i;
            }
        } else {
            statusBarHeight = i;
        }
        if (m(activity)) {
            statusBarHeight = e(activity);
        }
        return n() ? f(activity) : statusBarHeight;
    }

    public static void h(Activity activity, b27 b27Var) {
        activity.getWindow().getDecorView().post(new Runnable(b27Var, activity) {
            final Activity val$activity;
            final b27 val$callback;

            {
                this.val$activity = activity;
            }

            @Override
            public void run() {
            }
        });
    }

    public static int i(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static boolean j(Activity activity) {
        return b(activity) != null;
    }

    public static boolean k(View view) {
        return c(view) != null;
    }

    public static boolean l(Context context) {
        if (sb7.n()) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", null).invoke(clsLoadClass, null)).booleanValue();
            } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            }
        }
        return false;
    }

    public static boolean m(Context context) {
        int identifier;
        if (!sb7.o() || (identifier = context.getResources().getIdentifier("config_screen_has_notch", "bool", ConstantDeviceInfo.APP_PLATFORM)) <= 0) {
            return false;
        }
        return context.getResources().getBoolean(identifier);
    }

    public static boolean n() {
        if (sb7.r()) {
            try {
                return ((Boolean) Class.forName("flyme.config.FlymeFeature").getDeclaredField("IS_FRINGE_DEVICE").get(null)).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean o(Context context) {
        if (sb7.s()) {
            try {
                return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean p(Context context) {
        if (sb7.u()) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
                return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
            } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0036  */
    public static boolean q(Context context) {
        int iIntValue;
        if (sb7.v()) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
                Object objInvoke = clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, "ro.miui.notch", 0);
                if (objInvoke != null) {
                    iIntValue = ((Integer) objInvoke).intValue();
                } else {
                    iIntValue = 0;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        } else {
            iIntValue = 0;
        }
        return iIntValue == 1;
    }

    public static boolean r(Activity activity) {
        if (activity != null) {
            return j(activity);
        }
        return false;
    }

    public static boolean s(View view) {
        if (view != null) {
            return k(view);
        }
        return false;
    }
}
