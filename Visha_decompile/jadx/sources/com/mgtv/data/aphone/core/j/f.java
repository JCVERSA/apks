package com.mgtv.data.aphone.core.j;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.m;
import java.util.List;

public class f {
    private static final String a = "f";

    public static String a() {
        return PreferencesUtil.b("TAG_D", false) ? "1" : "0";
    }

    public static String b() {
        return "android_v4.0.8_20211207";
    }

    public static String c() {
        return Build.MODEL;
    }

    public static String d() {
        return Build.MANUFACTURER;
    }

    public static long e() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return 0L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        return ((((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1024) / 1024;
    }

    public static String f() {
        return m.a().b();
    }

    public static String g() {
        String[] strArrH = h();
        try {
            String str = strArrH.length > 0 ? strArrH[0] : "";
            c.a("big_data_sdk", "@@@@@@@@@@@@@@@@@@@@@@@@@ getCpuType:" + str);
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return "other";
        }
    }

    public static String[] h() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !TextUtils.isEmpty(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    public static String a(Context context) {
        String str;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == Process.myPid() && (str = runningAppProcessInfo.processName) != null) {
                return str;
            }
        }
        return null;
    }

    public static boolean b(Context context) {
        return context != null && context.getResources().getConfiguration().orientation == 2;
    }
}
