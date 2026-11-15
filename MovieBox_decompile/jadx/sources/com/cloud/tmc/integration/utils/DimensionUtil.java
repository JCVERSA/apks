package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.cloud.tmc.kernel.log.TmcLogger;

public class DimensionUtil {
    private static final String TAG = "TmcKernel:DimensionUtil";
    private static float sScale;
    private static float sScaledDensity;
    private static int sScreenHeight;
    private static int sScreenWidth;

    public static int dip2px(Context context, float f10) {
        initScale(context);
        return (int) ((f10 * sScale) + 0.5f);
    }

    public static float getDensity(Context context) {
        initScale(context);
        return sScale;
    }

    public static float getFontSize(float f10) {
        if (f10 == 0.875f) {
            return 14.0f;
        }
        if (f10 == 1.0f) {
            return 16.0f;
        }
        if (f10 == 1.125f) {
            return 18.0f;
        }
        if (f10 == 1.25f) {
            return 20.0f;
        }
        return f10 == 1.375f ? 22.0f : 16.0f;
    }

    public static int getRelativeLeft(View view) {
        return view.getId() == 16908290 ? view.getLeft() : view.getLeft() + getRelativeLeft((View) view.getParent());
    }

    public static int getRelativeTop(View view) {
        return view.getId() == 16908290 ? view.getTop() : view.getTop() + getRelativeTop((View) view.getParent());
    }

    public static int getScreenHeight(Context context) {
        int i10 = sScreenHeight;
        if (i10 != 0) {
            return i10;
        }
        int height = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
        sScreenHeight = height;
        return height;
    }

    public static int getScreenWidth(Context context) {
        int i10 = sScreenWidth;
        if (i10 != 0) {
            return i10;
        }
        int width = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
        sScreenWidth = width;
        return width;
    }

    private static void initScale(Context context) {
        try {
            if (sScale == 0.0f) {
                sScale = context.getResources().getDisplayMetrics().density;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private static void initScaledDensity(Context context) {
        try {
            if (sScaledDensity == 0.0f) {
                sScaledDensity = context.getResources().getDisplayMetrics().scaledDensity;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public static boolean isValueEqule(float f10, float f11) {
        return ((int) f10) == ((int) f11);
    }

    public static int px2dip(Context context, float f10) {
        initScale(context);
        return (int) ((f10 / sScale) + 0.5f);
    }

    public static float px2sp(Context context, float f10) {
        initScaledDensity(context);
        return f10 / sScaledDensity;
    }

    public static void resetDimensions() {
        sScreenWidth = 0;
        sScreenHeight = 0;
        sScaledDensity = 0.0f;
        sScale = 0.0f;
    }

    public static int sp2px(Context context, float f10) {
        initScaledDensity(context);
        return (int) ((f10 * sScaledDensity) + 0.5f);
    }
}
