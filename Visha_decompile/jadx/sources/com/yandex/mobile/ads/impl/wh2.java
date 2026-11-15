package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import defpackage.s86;
import defpackage.wn8;
import defpackage.y45;

public final class wh2 {
    private static final hi2 a = new hi2(new sf1(), new ii2());
    public static final int b = 0;

    public static final class a implements ViewTreeObserver.OnPreDrawListener {
        final ViewTreeObserver.OnPreDrawListener a;
        final View b;

        public a(View view, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            this.a = onPreDrawListener;
            this.b = view;
        }

        @Override
        public final boolean onPreDraw() {
            this.a.onPreDraw();
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            return true;
        }
    }

    public static final int a(int i, float f) {
        return Color.argb(wn8.d(0, wn8.g(255, (int) ((255 * (100 - f)) / 100.0f))), Color.red(i), Color.green(i), Color.blue(i));
    }

    public static final float b(int i, float f) {
        return ((i + 0.0f) / f) + 0.5f;
    }

    public static final boolean c(View view) {
        if (view == null) {
            return false;
        }
        y45.j(view, "view");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int width = view.getWidth() + i;
        int i2 = iArr[1];
        Rect rect = new Rect(i, i2, width, view.getHeight() + i2);
        Rect rect2 = new Rect();
        try {
            view.getWindowVisibleDisplayFrame(rect2);
        } catch (NullPointerException unused) {
        }
        return !((rect.bottom <= rect2.top || rect.top >= rect2.bottom) || (rect.right <= rect2.left || rect.left >= rect2.right));
    }

    public static final boolean d(View view) {
        y45.j(view, "view");
        if (view.isShown()) {
            return (view.getAlpha() > 0.0f ? 1 : (view.getAlpha() == 0.0f ? 0 : -1)) == 0;
        }
        return true;
    }

    public static final boolean e(View view) {
        y45.j(view, "view");
        Drawable background = view.getBackground();
        return (background == null || ((float) background.getAlpha()) == 0.0f) ? false : true;
    }

    public static final int b(View view) {
        y45.j(view, "view");
        if (view.isShown()) {
            return a.a(view);
        }
        return 0;
    }

    public static final int a(Context context, int i) {
        y45.j(context, "context");
        y45.j(context, "context");
        return s86.c(i / context.getResources().getDisplayMetrics().density);
    }

    public static final int b(Context context) {
        y45.j(context, "context");
        y45.j(context, "context");
        return (int) b(context.getResources().getDisplayMetrics().heightPixels, eb0.a(context, "context").density);
    }

    public static final void a(View view, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        y45.j(view, "view");
        y45.j(onPreDrawListener, "callback");
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, onPreDrawListener));
    }

    public static final int a(Context context, float f) {
        y45.j(context, "context");
        y45.j(context, "context");
        return s86.c(TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()));
    }

    public static final int a(View view) {
        int iB;
        if (view == null || !view.isShown() || (iB = b(view)) <= 0) {
            return 0;
        }
        int width = view.getLayoutParams().width > 0 ? view.getLayoutParams().width : view.getWidth();
        int height = view.getLayoutParams().height > 0 ? view.getLayoutParams().height : view.getHeight();
        if (height <= 0 || width <= 0) {
            return 0;
        }
        return (iB * 100) / (height * width);
    }

    public static final int c(Context context) {
        y45.j(context, "context");
        y45.j(context, "context");
        return (int) b(context.getResources().getDisplayMetrics().widthPixels, eb0.a(context, "context").density);
    }

    public static final boolean a(View view, int i) {
        return a(view) >= i;
    }

    public static final void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (viewGroup.getParent() instanceof ViewGroup) {
                    ViewParent parent = viewGroup.getParent();
                    y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeView(viewGroup);
                }
            } catch (Exception unused) {
            }
            try {
                viewGroup.removeAllViews();
            } catch (Exception unused2) {
            }
        }
    }

    public static final int a(Context context) {
        return eb0.a(context, "context").densityDpi;
    }

    public static final int a(Context context, kf1 kf1Var) {
        kf1 kf1Var2;
        y45.j(context, "context");
        y45.j(kf1Var, "requestedOrientation");
        kf1 kf1VarA = ks.a(context);
        if (kf1VarA != kf1Var && kf1VarA != (kf1Var2 = kf1.e) && (kf1Var != kf1Var2 || kf1VarA == kf1.c)) {
            return c(context);
        }
        return b(context);
    }
}
