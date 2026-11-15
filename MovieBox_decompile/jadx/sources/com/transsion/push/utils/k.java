package com.transsion.push.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.deviceinfo.DeviceInfo;
import java.util.TimeZone;

public final class k {
    private static void a(StringBuilder sb2, int i10, int i11) {
        String string = Integer.toString(i11);
        for (int i12 = 0; i12 < i10 - string.length(); i12++) {
            sb2.append('0');
        }
        sb2.append(string);
    }

    private static String b(boolean z10, boolean z11, int i10) {
        char c10;
        int i11 = i10 / 60000;
        if (i11 < 0) {
            i11 = -i11;
            c10 = '-';
        } else {
            c10 = '+';
        }
        StringBuilder sb2 = new StringBuilder(9);
        if (z10) {
            sb2.append("GMT");
        }
        sb2.append(c10);
        a(sb2, 2, i11 / 60);
        if (z11) {
            sb2.append(':');
        }
        a(sb2, 2, i11 % 60);
        return sb2.toString();
    }

    public static String c() {
        try {
            return b(true, true, TimeZone.getDefault().getRawOffset());
        } catch (Throwable th2) {
            PushLogUtils.LOG.i(Log.getStackTraceString(th2));
            return "";
        }
    }

    public static int d() {
        String strF = DeviceInfo.f();
        if (TextUtils.isEmpty(strF) || strF.length() < 3) {
            return 0;
        }
        try {
            return Integer.parseInt(strF.substring(0, 3));
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int e() {
        String strF = DeviceInfo.f();
        if (!TextUtils.isEmpty(strF) && strF.length() >= 4) {
            try {
                return Integer.parseInt(strF.substring(3));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return 0;
    }

    public static String f() {
        try {
            return yj.a.a().getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static boolean h(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
