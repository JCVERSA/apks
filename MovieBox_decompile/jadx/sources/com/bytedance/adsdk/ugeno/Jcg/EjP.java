package com.bytedance.adsdk.ugeno.Jcg;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;

public final class EjP {
    private static String Sj;

    @SuppressLint({"StaticFieldLeak"})
    private static Context TKC;
    private static Resources sP;

    public static void Sj(String str) {
        Sj = str;
    }

    private static String Sj(Context context) {
        if (Sj == null) {
            Sj = context.getPackageName();
        }
        return Sj;
    }

    private static int Sj(Context context, String str, String str2) {
        if (sP == null) {
            sP = context.getResources();
        }
        return sP.getIdentifier(str, str2, Sj(context));
    }

    public static int Sj(Context context, String str) {
        return Sj(context, str, "drawable");
    }
}
