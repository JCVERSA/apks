package com.gyf.immersionbar;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;

class a {

    private final int f32236a;

    private final int f32237b;

    private final boolean f32238c;

    private final int f32239d;

    private final int f32240e;

    private final boolean f32241f;

    private final float f32242g;

    a(Activity activity) {
        this.f32241f = activity.getResources().getConfiguration().orientation == 1;
        this.f32242g = j(activity);
        this.f32236a = c(activity, "status_bar_height");
        this.f32237b = b(activity);
        int iE = e(activity);
        this.f32239d = iE;
        this.f32240e = h(activity);
        this.f32238c = iE > 0;
    }

    private int b(Activity activity) {
        View viewFindViewById = activity.getWindow().findViewById(R$id.action_bar_container);
        int measuredHeight = viewFindViewById != null ? viewFindViewById.getMeasuredHeight() : 0;
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
    }

    static int c(Context context, String str) {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize && (Build.VERSION.SDK_INT < 29 || str.equals("status_bar_height"))) {
                    return dimensionPixelSize2;
                }
                float f10 = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f10 >= 0.0f ? f10 + 0.5f : f10 - 0.5f);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    private int e(Context context) {
        if (l((Activity) context)) {
            return f(context);
        }
        return 0;
    }

    static int f(Context context) {
        return c(context, context.getResources().getConfiguration().orientation == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape");
    }

    private int h(Context context) {
        if (l((Activity) context)) {
            return c(context, "navigation_bar_width");
        }
        return 0;
    }

    static int i(Context context) {
        return c(context, "navigation_bar_width");
    }

    private float j(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f10 = displayMetrics.widthPixels;
        float f11 = displayMetrics.density;
        return Math.min(f10 / f11, displayMetrics.heightPixels / f11);
    }

    private boolean l(Activity activity) {
        g.a aVarA = g.a(activity);
        if (!aVarA.f32294b && aVarA.f32293a) {
            return false;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i10 = displayMetrics.heightPixels;
        int i11 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i11 - displayMetrics2.widthPixels > 0 || i10 - displayMetrics2.heightPixels > 0;
    }

    int a() {
        return this.f32237b;
    }

    int d() {
        return this.f32239d;
    }

    int g() {
        return this.f32240e;
    }

    int k() {
        return this.f32236a;
    }

    boolean m() {
        return this.f32238c;
    }

    boolean n() {
        return this.f32242g >= 600.0f || this.f32241f;
    }
}
