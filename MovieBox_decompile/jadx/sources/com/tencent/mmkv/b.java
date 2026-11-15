package com.tencent.mmkv;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;
import java.util.List;

abstract class b {

    private static String f39731a = "";

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f39731a)) {
            return f39731a;
        }
        String strD = d();
        f39731a = strD;
        if (!TextUtils.isEmpty(strD)) {
            return f39731a;
        }
        String strC = c();
        f39731a = strC;
        if (!TextUtils.isEmpty(strC)) {
            return f39731a;
        }
        String strB = b(context);
        f39731a = strB;
        return strB;
    }

    private static String b(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    private static String c() {
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            return objInvoke instanceof String ? (String) objInvoke : "";
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    private static String d() {
        return Build.VERSION.SDK_INT >= 28 ? Application.getProcessName() : "";
    }
}
