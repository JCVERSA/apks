package com.transsion.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.blankj.utilcode.util.Utils;
import com.transsion.hubsdk.api.os.TranSystemProperties;
import defpackage.ydc;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class a {
    public static boolean a = false;
    public static int b = -1;
    public static String c = "0";

    public static boolean A() {
        return !ydc.g() && "tablet".equalsIgnoreCase(p().trim()) && g() >= 1630;
    }

    public static void B(Activity activity, float f, float f2) {
        View viewFindViewById;
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !u(activity) || (viewFindViewById = activity.findViewById(R.id.content)) == null) {
            return;
        }
        viewFindViewById.setPadding(0, d(activity, f), 0, d(activity, f2));
    }

    public static int C(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static boolean D(Context context) {
        return A() || u(context);
    }

    public static void a(Activity activity, int i) {
        if (activity == null || activity.isFinishing() || !D(activity)) {
            return;
        }
        activity.setRequestedOrientation(i);
    }

    public static void b(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        if (v(activity)) {
            activity.setRequestedOrientation(10);
        } else {
            activity.setRequestedOrientation(1);
        }
    }

    public static void c(Activity activity) {
        if (activity == null || activity.isFinishing() || !u(activity)) {
            return;
        }
        activity.setRequestedOrientation(-1);
    }

    public static int d(Context context, float f) {
        return (int) (TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int e(Context context) {
        Display defaultDisplay;
        if (Build.VERSION.SDK_INT >= 30) {
            defaultDisplay = context.getDisplay();
        } else {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
        }
        if (defaultDisplay != null) {
            return defaultDisplay.getRotation();
        }
        return 0;
    }

    public static int f(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static int g() {
        int i = b;
        if (i != -1) {
            return i;
        }
        try {
            String str = TranSystemProperties.get("ro.tranos.version");
            if (str != null && !str.isEmpty()) {
                String strReplaceAll = str.replaceAll("[^0-9]", "");
                if (strReplaceAll.length() > 4) {
                    strReplaceAll = strReplaceAll.substring(0, 4);
                }
                if (!strReplaceAll.isEmpty() && strReplaceAll.matches("\\d+")) {
                    int i2 = Integer.parseInt(strReplaceAll);
                    b = i2;
                    return i2;
                }
            }
            return 0;
        } catch (Exception e) {
            Log.e("ScreenUtils", "Error getting OS version", e);
            return 0;
        }
    }

    public static float h(Context context) {
        if (context == null) {
            return 0.0f;
        }
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
            if (windowManager == null) {
                return 0.0f;
            }
            float f = context.getResources().getDisplayMetrics().density;
            if (f <= 0.0f) {
                return 0.0f;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
                return Math.min(bounds.width(), bounds.height()) / f;
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return Math.min(point.x, point.y) / f;
        } catch (Exception e) {
            Log.e("ScreenUtils", "getPhysicalMinWidthDp error", e);
            return 0.0f;
        }
    }

    public static int i(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
            return displayMetrics.heightPixels;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static Point j() {
        Point point = new Point(1, 1);
        try {
            WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
            if (windowManager == null) {
                return point;
            }
            windowManager.getDefaultDisplay().getRealSize(point);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return point;
    }

    public static BaseConstant.SCREEN_TYPE k(Context context) {
        if (!ydc.g() && !A()) {
            return BaseConstant.SCREEN_TYPE.FOLD;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = displayMetrics.widthPixels;
        float f2 = displayMetrics.density;
        float f3 = f / f2;
        float f4 = displayMetrics.heightPixels / f2;
        if (Math.min(f3, f4) >= BaseConstant.m.floatValue()) {
            return f3 > f4 ? BaseConstant.SCREEN_TYPE.OPEN_LAND : BaseConstant.SCREEN_TYPE.OPEN_PORT;
        }
        return BaseConstant.SCREEN_TYPE.FOLD;
    }

    public static int l(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int m(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int n(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static int o(Context context, String str) {
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier(str, TypedValues.Custom.S_INT, ConstantDeviceInfo.APP_PLATFORM);
            if (identifier != 0) {
                return resources.getInteger(identifier);
            }
            Log.e("ScreenUtils", "Failed to get system resource ID. Incompatible framework version?");
            return -1;
        } catch (Exception unused) {
        }
    }

    public static String p() {
        if (!c.equals("0")) {
            return c;
        }
        try {
            String str = TranSystemProperties.get("ro.build.characteristics");
            c = str;
            return str;
        } catch (Exception unused) {
            return "tablet";
        }
    }

    public static boolean q(Context context) {
        return !s(context) && a;
    }

    public static boolean r(Context context) {
        int iE = e(context);
        return iE == 1 || iE == 3;
    }

    public static boolean s(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }

    public static boolean t(Context context) {
        return o(context, "config_navBarInteractionMode") == 2;
    }

    public static boolean u(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Display display = Build.VERSION.SDK_INT >= 30 ? context.getDisplay() : null;
            if (display != null) {
                int displayId = display.getDisplayId();
                String name = display.getName();
                if (displayId != 0 && "phone_extend_pad".equals(name)) {
                    Log.i("debug", "当前是处于扩展投屏的pad模式");
                    return true;
                }
            }
        } catch (UnsupportedOperationException unused) {
        }
        return false;
    }

    public static boolean v(Context context) {
        if (context == null) {
            return false;
        }
        if (D(context)) {
            return true;
        }
        Configuration configuration = context.getResources().getConfiguration();
        float f = configuration.smallestScreenWidthDp;
        Float f2 = BaseConstant.m;
        if (f < f2.floatValue() && h(context) < f2.floatValue()) {
            return ydc.g() && w(configuration);
        }
        return true;
    }

    public static boolean w(Configuration configuration) {
        String str;
        int i = configuration.screenLayout;
        int i2 = i & 15;
        if (i2 == 0) {
            str = "SCREENLAYOUT_SIZE_UNDEFINED";
        } else if (i2 == 1) {
            str = "SCREENLAYOUT_SIZE_SMALL";
        } else if (i2 == 2) {
            str = "SCREENLAYOUT_SIZE_NORMAL";
        } else if (i2 == 3) {
            str = "SCREENLAYOUT_SIZE_LARGE";
        } else if (i2 != 4) {
            str = "" + i;
        } else {
            str = "SCREENLAYOUT_SIZE_XLARGE";
        }
        Log.e("ScreenUtils", "isLargeScreen :" + str);
        return i2 == 3 || i2 == 4;
    }

    public static boolean x(Configuration configuration) {
        return (configuration.screenLayout & 15) == 2;
    }

    public static boolean y(Context context, View view) {
        if (view == null || context == null) {
            return true;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1] < l(context) / 2;
    }

    public static boolean z(Configuration configuration) {
        return (configuration.screenLayout & 15) == 1;
    }
}
