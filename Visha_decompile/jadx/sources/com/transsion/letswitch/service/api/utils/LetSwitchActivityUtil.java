package com.transsion.letswitch.service.api.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Lcom/transsion/letswitch/service/api/utils/LetSwitchActivityUtil;", "", MethodDecl.initName, "()V", "getTopActivity", "", "context", "Landroid/content/Context;", "isAppRunning", "", "packageName", "getUid", "", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LetSwitchActivityUtil {
    public static final LetSwitchActivityUtil INSTANCE = new LetSwitchActivityUtil();

    private LetSwitchActivityUtil() {
    }

    public final String getTopActivity(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("activity");
        y45.h(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return "";
        }
        ComponentName componentName = runningTasks.get(0).topActivity;
        y45.g(componentName);
        return componentName.flattenToString();
    }

    public final int getUid(Context context, String packageName) {
        y45.j(context, "context");
        y45.j(packageName, "packageName");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(packageName, 128);
            y45.i(applicationInfo, "getApplicationInfo(...)");
            return applicationInfo.uid;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public final boolean isAppRunning(Context context, String packageName) {
        y45.j(context, "context");
        y45.j(packageName, "packageName");
        Object systemService = context.getSystemService("activity");
        y45.h(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        Iterator<T> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (y45.e(((ActivityManager.RunningAppProcessInfo) it.next()).processName, packageName)) {
                return true;
            }
        }
        return false;
    }
}
