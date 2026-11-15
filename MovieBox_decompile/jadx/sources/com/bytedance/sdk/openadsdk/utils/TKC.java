package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class TKC {
    public static int Sj = -1;

    public static int Sj(Context context, int i10, int i11) {
        int iRound;
        int iSj = Sj(context, i11);
        if (iSj == -1) {
            return Sj;
        }
        int iMin = Math.min(90, Math.round(iSj * 0.15f));
        if (i10 > 655) {
            iRound = Math.round((i10 / 728.0f) * 90.0f);
        } else if (i10 > 632) {
            iRound = 81;
        } else if (i10 > 526) {
            iRound = Math.round((i10 / 468.0f) * 60.0f);
        } else {
            iRound = i10 > 432 ? 68 : Math.round((i10 / 320.0f) * 50.0f);
        }
        return Math.max(Math.min(iRound, iMin), 50);
    }

    public static int Sj(Context context, int i10) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            try {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                    int i11 = configuration.orientation;
                    if (i10 == 0) {
                        i10 = i11;
                    }
                    if (i10 == i11) {
                        return Math.round(displayMetrics.heightPixels / displayMetrics.density);
                    }
                    return Math.round(displayMetrics.widthPixels / displayMetrics.density);
                }
            } catch (Throwable unused) {
                return Sj;
            }
        }
        return Sj;
    }
}
