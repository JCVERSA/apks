package qb;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    public static final j f69617a = new j();

    private j() {
    }

    public static CrashlyticsReport.e.d.a.c c(j jVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return jVar.b(str, i10, i11, z10);
    }

    private final String f() {
        String processName;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            return (i10 < 28 || (processName = Application.getProcessName()) == null) ? "" : processName;
        }
        String strMyProcessName = Process.myProcessName();
        Intrinsics.g(strMyProcessName, "{\n      Process.myProcessName()\n    }");
        return strMyProcessName;
    }

    public final CrashlyticsReport.e.d.a.c a(String processName, int i10, int i11) {
        Intrinsics.h(processName, "processName");
        return c(this, processName, i10, i11, false, 8, null);
    }

    public final CrashlyticsReport.e.d.a.c b(String processName, int i10, int i11, boolean z10) {
        Intrinsics.h(processName, "processName");
        CrashlyticsReport.e.d.a.c cVarA = CrashlyticsReport.e.d.a.c.a().e(processName).d(i10).c(i11).b(z10).a();
        Intrinsics.g(cVarA, "builder()\n      .setProc…ltProcess)\n      .build()");
        return cVarA;
    }

    public final List d(Context context) {
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
            arrayList2.add(CrashlyticsReport.e.d.a.c.a().e(runningAppProcessInfo.processName).d(runningAppProcessInfo.pid).c(runningAppProcessInfo.importance).b(Intrinsics.c(runningAppProcessInfo.processName, str)).a());
        }
        return arrayList2;
    }

    public final CrashlyticsReport.e.d.a.c e(Context context) {
        Object next;
        Intrinsics.h(context, "context");
        int iMyPid = Process.myPid();
        Iterator it = d(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((CrashlyticsReport.e.d.a.c) next).c() != iMyPid);
        CrashlyticsReport.e.d.a.c cVar = (CrashlyticsReport.e.d.a.c) next;
        return cVar == null ? c(this, f(), iMyPid, 0, false, 12, null) : cVar;
    }
}
