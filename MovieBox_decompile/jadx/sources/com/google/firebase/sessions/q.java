package com.google.firebase.sessions;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.android.gms.common.util.ProcessUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class q {

    public static final q f31866a = new q();

    private q() {
    }

    private final p a(String str, int i10, int i11, boolean z10) {
        return new p(str, i10, i11, z10);
    }

    static p b(q qVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return qVar.a(str, i10, i11, z10);
    }

    public final List c(Context context) {
        Intrinsics.h(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager != null ? activityManager.getRunningAppProcesses() : null;
        if (runningAppProcesses == null) {
            runningAppProcesses = CollectionsKt.l();
        }
        List listF0 = CollectionsKt.f0(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : listF0) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            String str2 = runningAppProcessInfo.processName;
            Intrinsics.g(str2, "runningAppProcessInfo.processName");
            arrayList2.add(new p(str2, runningAppProcessInfo.pid, runningAppProcessInfo.importance, Intrinsics.c(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    public final p d(Context context) {
        Object next;
        Intrinsics.h(context, "context");
        int iMyPid = Process.myPid();
        Iterator it = c(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((p) next).b() != iMyPid);
        p pVar = (p) next;
        return pVar == null ? b(this, e(), iMyPid, 0, false, 12, null) : pVar;
    }

    public final String e() throws Throwable {
        String processName;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            String strMyProcessName = Process.myProcessName();
            Intrinsics.g(strMyProcessName, "myProcessName()");
            return strMyProcessName;
        }
        if (i10 >= 28 && (processName = Application.getProcessName()) != null) {
            return processName;
        }
        String myProcessName = ProcessUtils.getMyProcessName();
        return myProcessName != null ? myProcessName : "";
    }
}
