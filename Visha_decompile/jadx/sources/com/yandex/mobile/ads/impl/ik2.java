package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.y45;

public final class ik2 {
    public static final t10 a(Context context) {
        WindowInsetsCompat windowInsetsCompatB;
        y45.j(context, "context");
        try {
            windowInsetsCompatB = b(context);
        } catch (Throwable th) {
            sp0.b(th);
            windowInsetsCompatB = null;
        }
        if (windowInsetsCompatB == null) {
            return t10.e;
        }
        Insets insets = windowInsetsCompatB.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        y45.i(insets, "getInsets(...)");
        int i = insets.left;
        int i2 = wh2.b;
        return new t10(wh2.b(i, eb0.a(context, "context").density), wh2.b(insets.top, eb0.a(context, "context").density), wh2.b(insets.right, eb0.a(context, "context").density), wh2.b(insets.bottom, eb0.a(context, "context").density));
    }

    private static WindowInsetsCompat b(Context context) {
        Activity activityA;
        if (!pa.a(30)) {
            if (!pa.a(28) || (activityA = p0.a()) == null) {
                return null;
            }
            View decorView = activityA.getWindow().getDecorView();
            y45.i(decorView, "getDecorView(...)");
            return ViewCompat.getRootWindowInsets(decorView);
        }
        Object systemService = context.getSystemService("window");
        y45.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowMetrics currentWindowMetrics = ((WindowManager) systemService).getCurrentWindowMetrics();
        y45.i(currentWindowMetrics, "getCurrentWindowMetrics(...)");
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(currentWindowMetrics.getWindowInsets());
        y45.i(windowInsetsCompat, "toWindowInsetsCompat(...)");
        return windowInsetsCompat;
    }
}
