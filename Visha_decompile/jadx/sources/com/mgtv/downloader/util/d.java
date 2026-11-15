package com.mgtv.downloader.util;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.p;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class d {
    private static int a = -1;
    private static String b = "https://cp.bz.mgtv.com/";

    public static int a() {
        return a;
    }

    public static String b() {
        return b;
    }

    @NonNull
    public static List<String> c(@Nullable String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ProcessInfo.SPLIT_NEW_VERSION);
        while (stringTokenizer.hasMoreElements()) {
            Object objNextElement = stringTokenizer.nextElement();
            if (objNextElement != null && (objNextElement instanceof String)) {
                String str2 = (String) objNextElement;
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    public static String d() {
        return p.c();
    }

    public static String e() {
        String strG = com.hunantv.imgo.util.b.G();
        if (!TextUtils.isEmpty(strG)) {
            return strG;
        }
        try {
            return System.getProperty("http.agent").concat(com.hunantv.imgo.util.b.b(com.hunantv.imgo.util.d.a));
        } catch (Throwable th) {
            th.printStackTrace();
            return strG;
        }
    }

    public static boolean f() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) BaseApplication.getContext().getSystemService("activity");
            String packageName = BaseApplication.getContext().getPackageName();
            try {
                runningAppProcesses = activityManager.getRunningAppProcesses();
            } catch (NullPointerException e) {
                e.printStackTrace();
                runningAppProcesses = null;
            }
            if (runningAppProcesses == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean g() {
        try {
            return true ^ ((KeyguardManager) BaseApplication.getContext().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        } catch (Throwable th) {
            th.printStackTrace();
            c.a("get screen on failed");
            return true;
        }
    }

    public static void a(int i) {
        a = i;
    }

    public static int b(String str) {
        try {
            return Integer.parseInt(str, 16);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static String d(String str) {
        if (str != null && !TextUtils.isEmpty(str)) {
            try {
                return new URL(str).getHost();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    public static void a(String str) {
        b = str;
    }

    @NonNull
    public static String a(@Nullable byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArr) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    sb.append("0");
                    sb.append(hexString);
                } else {
                    sb.append(hexString);
                }
            }
            return sb.toString().toUpperCase();
        }
        return "";
    }

    public static int c() {
        String imsiForUnicom = com.hunantv.imgo.util.b.getImsiForUnicom();
        if (!TextUtils.isEmpty(imsiForUnicom)) {
            if (imsiForUnicom.startsWith("46000") || imsiForUnicom.startsWith("46002") || imsiForUnicom.startsWith("46007")) {
                return 1;
            }
            if (imsiForUnicom.startsWith("46001") || imsiForUnicom.startsWith("46006")) {
                return 2;
            }
            if (imsiForUnicom.startsWith("46003") || imsiForUnicom.startsWith("46005") || imsiForUnicom.startsWith("46011")) {
                return 3;
            }
        }
        return 0;
    }

    public static String a(Context context) {
        try {
            if (context == null) {
                return Build.CPU_ABI;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            Field declaredField = applicationInfo.getClass().getDeclaredField("primaryCpuAbi");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(applicationInfo);
            if ((obj instanceof String) && !"".equals(((String) obj).trim())) {
                return (String) obj;
            }
            return Build.CPU_ABI;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
