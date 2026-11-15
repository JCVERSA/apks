package com.yandex.mobile.ads.impl;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import defpackage.wn8;
import defpackage.y45;

public final class l10 {
    private final it1 a;
    private final rt1 b;

    public l10() {
        this(new it1());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
    
        if (r7.getCurrentModeType() == 4) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0067, code lost:
    
        if (r8.getPackageManager().hasSystemFeature("android.hardware.touchscreen") == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final k10 a(Context context) {
        DisplayMetrics displayMetricsA = eb0.a(context, "context");
        Point pointA = this.b.a(context);
        int i = pointA.x;
        int i2 = pointA.y;
        float f = displayMetricsA.density;
        float f2 = i;
        float f3 = i2;
        float f4 = wn8.f(f2 / f, f3 / f);
        float f5 = f * 160;
        float f6 = f2 / f5;
        float f7 = f3 / f5;
        double dSqrt = Math.sqrt((f7 * f7) + (f6 * f6));
        if (pa.a(13)) {
            Object systemService = context.getSystemService("uimode");
            UiModeManager uiModeManager = systemService instanceof UiModeManager ? (UiModeManager) systemService : null;
            if (uiModeManager != null) {
            }
            return (dSqrt < 7.0d || f4 >= 600.0f) ? k10.c : k10.b;
        }
        if (dSqrt >= 15.0d) {
            this.a.getClass();
            y45.j(context, "context");
            y45.j("android.hardware.touchscreen", "name");
            try {
            } catch (Throwable unused) {
                sp0.c(new Object[0]);
            }
        }
        if (dSqrt < 7.0d) {
        }
        return k10.d;
    }

    public l10(it1 it1Var) {
        y45.j(it1Var, "safePackageManager");
        this.a = it1Var;
        this.b = new rt1();
    }
}
