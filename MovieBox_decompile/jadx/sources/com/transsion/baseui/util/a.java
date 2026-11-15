package com.transsion.baseui.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.TypedValue;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f42330a = new a();

    public static final int f42331b = 8;

    private a() {
    }

    public final float a(Context context, float f10) {
        Intrinsics.h(context, "context");
        return TypedValue.applyDimension(1, f10, context.getApplicationContext().getResources().getDisplayMetrics());
    }

    public final int b(Context context) {
        Intrinsics.h(context, "context");
        return zg.h.f76787a.e(context);
    }

    public final boolean c(Context context, String str) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            Intrinsics.e(str);
            return packageManager.getPackageInfo(str, 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}
