package com.transsion.athena.taaneh;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.sdk.oneid.OneID;
import defpackage.c4d;
import defpackage.e4d;
import defpackage.k5d;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class a {
    public static volatile String a;
    public static final Map b = new ConcurrentHashMap();
    public static boolean c = true;
    public static long d = 0;

    public static int a(long j) {
        if (j > 999) {
            return Integer.parseInt(String.valueOf(j).substring(0, 4));
        }
        return 0;
    }

    public static String b() {
        return a == null ? "" : a;
    }

    public static String c(int i) {
        StringBuilder sb;
        String str;
        if (i > 10) {
            sb = new StringBuilder();
            str = "";
        } else {
            sb = new StringBuilder();
            str = "0";
        }
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static String d(Context context) {
        if (TextUtils.isEmpty(a)) {
            try {
                a = athena.b(context).a();
                if (!TextUtils.isEmpty(a)) {
                    e4d e4dVarA = e4d.a(context);
                    if (!TextUtils.equals(a, e4dVarA.i("athena_id"))) {
                        e4dVarA.g("athena_id", a);
                    }
                }
            } catch (Exception e) {
                c4d.d(e.getMessage());
            }
            if (TextUtils.isEmpty(a)) {
                a = e4d.a(context).i("athena_id");
            }
        }
        return a;
    }

    public static void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Log.e("Athena", "------------------------------------------------------------");
        Log.e("Athena", "");
        Log.e("Athena", str);
        Log.e("Athena", "");
        Log.e("Athena", "------------------------------------------------------------");
    }

    public static boolean f(Context context, String str) {
        if ("android.permission.ACCESS_FINE_LOCATION".equals(str)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
                String[] strArr = packageInfo.requestedPermissions;
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo != null && applicationInfo.uid == 1000 && strArr != null) {
                    for (String str2 : strArr) {
                        if (TextUtils.equals(str2, str)) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Exception e) {
                c4d.d(e.getMessage());
            }
        }
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (Exception e2) {
            c4d.d(e2.getMessage());
            return false;
        }
    }

    public static String g(Context context, String str) {
        Map map = b;
        if (map.containsKey(str)) {
            return (String) map.get(str);
        }
        try {
            if (!OneID.f()) {
                return "";
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = d;
            if (j != 0 && jElapsedRealtime - j < 600000) {
                return "";
            }
            String strB = k5d.a(context).b(str);
            if (TextUtils.isEmpty(strB)) {
                d = jElapsedRealtime;
                return "";
            }
            map.put(str, strB);
            d = 0L;
            return strB;
        } catch (Exception e) {
            c4d.d(e.getMessage());
            return "";
        }
    }

    public static void h(String str) {
        a = str;
    }

    public static boolean i() {
        return com.transsion.athena.config.data.model.ehanat.q() || com.transsion.athena.config.data.model.ehanat.v();
    }

    public static boolean j(long j) {
        return j > 999 && j <= 9999;
    }

    public static boolean k(Context context) {
        try {
            if (c) {
                if (TextUtils.isEmpty(e4d.a(context).i("first_launch"))) {
                    if (new File(context.getFilesDir() + File.separator + com.transsion.athena.config.data.model.ehanat.j, "global.cfg").exists()) {
                        c = false;
                    }
                } else {
                    c = false;
                }
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
        return c;
    }

    public static boolean l(Context context) {
        try {
            ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo("com.hoffnung", 8).providers;
            if (providerInfoArr != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if ("com.transsion.dataservice.provider".equals(providerInfo.authority)) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
        return false;
    }
}
