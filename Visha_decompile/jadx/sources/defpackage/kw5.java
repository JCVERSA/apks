package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.List;

public abstract class kw5 {
    public static String a = "";

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String strD = d();
        a = strD;
        if (!TextUtils.isEmpty(strD)) {
            return a;
        }
        String strC = c();
        a = strC;
        if (!TextUtils.isEmpty(strC)) {
            return a;
        }
        String strB = b(context);
        a = strB;
        return strB;
    }

    public static String b(Context context) {
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

    public static String c() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            return objInvoke instanceof String ? (String) objInvoke : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String d() {
        return Application.getProcessName();
    }
}
