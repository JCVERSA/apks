package com.transsion.athena.taaneh;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.transsion.sdk.oneid.OneID;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m4.a;
import m4.b;

public class anehat {

    private static volatile String f41674a;

    private static final Map<String, String> f41675b = new ConcurrentHashMap();

    private static boolean f41676c = true;

    private static long f41677d = 0;

    public static final int f41678e = 0;

    @NonNull
    public static String a() {
        return f41674a == null ? "" : f41674a;
    }

    public static boolean b(long j10) {
        return j10 > 999 && j10 <= 9999;
    }

    public static boolean c(Context context) {
        try {
            ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo("com.hoffnung", 8).providers;
            if (providerInfoArr != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if ("com.transsion.dataservice.provider".equals(providerInfo.authority)) {
                        return true;
                    }
                }
            }
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
        return false;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f41674a)) {
            try {
                f41674a = athena.a(context).a();
                if (!TextUtils.isEmpty(f41674a)) {
                    a aVarA = a.a(context);
                    if (!TextUtils.equals(f41674a, aVarA.i("athena_id"))) {
                        aVarA.g("athena_id", f41674a);
                    }
                }
            } catch (Exception e10) {
                aethna.b(e10.getMessage());
            }
            if (TextUtils.isEmpty(f41674a)) {
                f41674a = a.a(context).i("athena_id");
            }
        }
        return f41674a;
    }

    public static void b(String str) {
        f41674a = str;
    }

    public static String b(Context context, String str) {
        Map<String, String> map = f41675b;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        try {
            if (!OneID.f()) {
                return "";
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = f41677d;
            if (j10 != 0 && jElapsedRealtime - j10 < 600000) {
                return "";
            }
            String strA = b.b(context).a(str);
            if (!TextUtils.isEmpty(strA)) {
                map.put(str, strA);
                f41677d = 0L;
                return strA;
            }
            f41677d = jElapsedRealtime;
            return "";
        } catch (Exception e10) {
            aethna.b(e10.getMessage());
            return "";
        }
    }

    public static boolean b() {
        return com.transsion.athena.config.data.model.ehanat.q() || com.transsion.athena.config.data.model.ehanat.v();
    }

    public static int a(long j10) {
        if (j10 > 999) {
            return Integer.parseInt(String.valueOf(j10).substring(0, 4));
        }
        return 0;
    }

    public static boolean b(Context context) {
        try {
            if (f41676c) {
                if (!TextUtils.isEmpty(a.a(context).i("first_launch"))) {
                    f41676c = false;
                } else {
                    if (new File(context.getFilesDir() + File.separator + com.transsion.athena.config.data.model.ehanat.f41484j, "global.cfg").exists()) {
                        f41676c = false;
                    }
                }
            }
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
        return f41676c;
    }

    public static boolean a(Context context, String str) {
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
            } catch (Exception e10) {
                aethna.b(e10.getMessage());
            }
        }
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (Exception e11) {
            aethna.b(e11.getMessage());
            return false;
        }
    }

    public static String a(int i10) {
        StringBuilder sb2;
        String str;
        if (i10 > 10) {
            sb2 = new StringBuilder();
            str = "";
        } else {
            sb2 = new StringBuilder();
            str = "0";
        }
        sb2.append(str);
        sb2.append(i10);
        return sb2.toString();
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Log.e("Athena", "------------------------------------------------------------");
        Log.e("Athena", "");
        Log.e("Athena", str);
        Log.e("Athena", "");
        Log.e("Athena", "------------------------------------------------------------");
    }
}
