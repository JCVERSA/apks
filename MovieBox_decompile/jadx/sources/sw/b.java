package sw;

import android.app.ActivityManager;
import android.content.Context;
import java.util.Collection;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f72436a = new b();

    private b() {
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = context.getSystemService("activity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            String packageName = context.getPackageName();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> list = runningAppProcesses;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
                if (Intrinsics.c(runningAppProcessInfo.processName, packageName) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                objM453constructorimpl = Boolean.FALSE;
            }
            return ((Boolean) objM453constructorimpl).booleanValue();
        }
    }
}
