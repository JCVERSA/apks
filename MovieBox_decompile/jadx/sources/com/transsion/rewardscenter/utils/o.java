package com.transsion.rewardscenter.utils;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class o {

    private static Context f49305b;

    public static final o f49304a = new o();

    public static final int f49306c = 8;

    private o() {
    }

    public final boolean a(Context context, String packageName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        if (f49305b == null) {
            b(context);
        }
        try {
            Context context2 = f49305b;
            if (context2 == null) {
                Intrinsics.y("applicationContext");
                context2 = null;
            }
            return context2.getPackageManager().getApplicationInfo(packageName, 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        f49305b = context.getApplicationContext();
    }
}
