package com.transsion.sysbar;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import com.transsion.common.R;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class a {
    public final int a;
    public final int b;
    public final boolean c;
    public final int d;
    public final int e;
    public final boolean f;
    public final float g;

    public a(Activity activity) {
        this.f = activity.getResources().getConfiguration().orientation == 1;
        this.g = j(activity);
        this.a = c(activity, "status_bar_height");
        this.b = b(activity);
        int iE = e(activity);
        this.d = iE;
        this.e = h(activity);
        this.c = iE > 0;
    }

    public static int c(Context context, String str) {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", ConstantDeviceInfo.APP_PLATFORM);
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize && str.equals("status_bar_height")) {
                    return dimensionPixelSize2;
                }
                float f = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f >= 0.0f ? f + 0.5f : f - 0.5f);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    public static int f(Context context) {
        return c(context, context.getResources().getConfiguration().orientation == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape");
    }

    public static int i(Context context) {
        return c(context, "navigation_bar_width");
    }

    public int a() {
        return this.b;
    }

    public final int b(Activity activity) {
        View viewFindViewById = activity.getWindow().findViewById(R.id.action_bar_container);
        int measuredHeight = viewFindViewById != null ? viewFindViewById.getMeasuredHeight() : 0;
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(android.R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
    }

    public int d() {
        return this.d;
    }

    public final int e(Context context) {
        if (l((Activity) context)) {
            return f(context);
        }
        return 0;
    }

    public int g() {
        return this.e;
    }

    public final int h(Context context) {
        if (l((Activity) context)) {
            return c(context, "navigation_bar_width");
        }
        return 0;
    }

    public final float j(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f = displayMetrics.widthPixels;
        float f2 = displayMetrics.density;
        return Math.min(f / f2, displayMetrics.heightPixels / f2);
    }

    public int k() {
        return this.a;
    }

    public boolean l(Activity activity) {
        c.a aVarA = c.a(activity);
        if (!aVarA.b && aVarA.a) {
            return false;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i2 - displayMetrics2.widthPixels > 0 || i - displayMetrics2.heightPixels > 0;
    }

    public boolean m() {
        return this.c;
    }

    public boolean n() {
        return this.g >= 600.0f || this.f;
    }
}
