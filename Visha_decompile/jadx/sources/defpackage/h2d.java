package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import com.mgmi.f.d;
import java.util.List;

public abstract class h2d {
    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static ResolveInfo b(Context context, String str) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
                return null;
            }
            return listQueryIntentActivities.iterator().next();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String c(Application application) {
        if (application == null) {
            return "";
        }
        try {
            int iMyPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) application.getSystemService("activity");
            if (activityManager != null && activityManager.getRunningAppProcesses() != null && !activityManager.getRunningAppProcesses().isEmpty()) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo != null && runningAppProcessInfo.pid == iMyPid) {
                        return runningAppProcessInfo.processName;
                    }
                }
                return "";
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean d(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            try {
                context.startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static void e(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(d.a(str, 0)));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean f(Application application) {
        if (application == null) {
            return false;
        }
        try {
            return application.getPackageName().equals(c(application));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean g(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && runningTasks.size() != 0) {
                if (context.getPackageName().equals(runningTasks.get(0).topActivity.getPackageName())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void h(Context context, String str) {
        j(context, str);
    }

    public static boolean i(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo != null && (str = runningAppProcessInfo.processName) != null && TextUtils.equals(str, context.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void j(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }
}
