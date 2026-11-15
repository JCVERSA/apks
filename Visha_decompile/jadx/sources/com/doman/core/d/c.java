package com.doman.core.d;

import android.content.Context;

public final class c {
    private static String a = "ChannelUtil";

    public static String a(Context context) {
        String strA = a(context, "SQ_CHANNEL");
        g.a(a, "getChannelCode = ".concat(String.valueOf(strA)));
        return strA != null ? strA : "lmsdk";
    }

    public static String b(Context context) {
        String strA = a(context, "AD_APP_KEY");
        return strA != null ? strA : "LM0001";
    }

    private static String a(Context context, String str) {
        try {
            Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get(str);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
