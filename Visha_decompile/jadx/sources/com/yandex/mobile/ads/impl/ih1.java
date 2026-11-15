package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import defpackage.y45;

public final class ih1 {
    public static final String a(Context context) {
        y45.j(context, "context");
        try {
            Object systemService = context.getApplicationContext().getSystemService("connectivity");
            y45.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            return activeNetworkInfo.getType() == 0 ? activeNetworkInfo.getSubtypeName() : activeNetworkInfo.getTypeName();
        } catch (Exception unused) {
            return null;
        }
    }

    public static final Point b(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("window");
        y45.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0044  */
    public static final Boolean c(Context context) {
        boolean z;
        y45.j(context, "context");
        try {
            int i = pw1.l;
            ju1 ju1VarA = pw1.a.a().a(context);
            if (y45.e(ju1VarA != null ? Boolean.valueOf(ju1VarA.T()) : null, Boolean.TRUE)) {
                Object systemService = context.getSystemService("connectivity");
                y45.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities != null) {
                    z = true;
                    if (!networkCapabilities.hasTransport(4)) {
                        z = false;
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
