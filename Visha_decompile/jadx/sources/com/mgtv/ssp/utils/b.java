package com.mgtv.ssp.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.view.WindowManager;

public final class b {
    public static boolean a(Activity activity) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
        return (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects().size() <= 0) ? false : true;
    }

    private static boolean b(Activity activity) {
        if (!Build.MANUFACTURER.equalsIgnoreCase("HUAWEI")) {
            return false;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            if (clsLoadClass != null) {
                return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", null).invoke(clsLoadClass, null)).booleanValue();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean c(Activity activity) {
        if (Build.MANUFACTURER.equalsIgnoreCase("oppo")) {
            return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
        }
        return false;
    }

    @SuppressLint({"PrivateApi"})
    private static boolean d(Activity activity) {
        if (!Build.MANUFACTURER.equalsIgnoreCase("vivo")) {
            return false;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.util.FtFeature");
            if (clsLoadClass != null) {
                return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @SuppressLint({"PrivateApi"})
    private static boolean e(Activity activity) {
        if (!Build.MANUFACTURER.equalsIgnoreCase("xiaomi")) {
            return false;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
            return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, "ro.miui.notch", 0)).intValue() == 1;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void a(Context context, boolean z) {
        Activity activityB = c.b(context);
        if (activityB == null) {
            return;
        }
        WindowManager.LayoutParams attributes = activityB.getWindow().getAttributes();
        if (z) {
            attributes.layoutInDisplayCutoutMode = 1;
        } else {
            attributes.layoutInDisplayCutoutMode = 0;
        }
        activityB.getWindow().setAttributes(attributes);
    }
}
