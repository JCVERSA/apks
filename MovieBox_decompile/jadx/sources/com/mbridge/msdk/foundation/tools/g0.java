package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.res.Resources;

public class g0 {
    public static boolean a(int i10) {
        return (i10 == -1 || ((-16777216) & i10) == 0 || (i10 & 16711680) == 0) ? false : true;
    }

    public static int a(Context context, String str, String str2) {
        String packageName = "";
        try {
            try {
                packageName = com.mbridge.msdk.foundation.controller.c.m().h();
            } catch (Exception unused) {
                o0.b("ResourceUtil", "MBSDKContext.getInstance() is null resName:" + str);
            }
            if (y0.a(packageName) && context != null) {
                packageName = context.getPackageName();
            }
            if (y0.a(packageName) || context == null) {
                return -1;
            }
            return context.getResources().getIdentifier(str, str2, packageName);
        } catch (Exception unused2) {
            o0.b("ResourceUtil", "Resource not found resName:" + str);
            return -1;
        }
    }

    public static Resources a(Context context) {
        if (context != null) {
            try {
                return context.getResources();
            } catch (Exception e10) {
                o0.b("ResourceUtil", "Resource error:" + e10.getMessage());
            }
        }
        return null;
    }
}
