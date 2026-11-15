package com.apm.insight.runtime;

import com.apm.insight.MonitorCrash;

public final class j {

    private static MonitorCrash f19193a = null;

    private static int f19194b = -1;

    private static int f19195c;

    public static MonitorCrash a() {
        if (f19193a == null) {
            MonitorCrash monitorCrashInitSDK = MonitorCrash.initSDK(com.apm.insight.e.g(), "239017", 20089L, "2008-20250701130429", "com.apm.insight");
            f19193a = monitorCrashInitSDK;
            monitorCrashInitSDK.config().setChannel("release");
        }
        return f19193a;
    }

    public static void a(Throwable th2, String str) {
        if (com.apm.insight.e.g() == null) {
            return;
        }
        if (f19194b == -1) {
            f19194b = 5;
        }
        int i10 = f19195c;
        if (i10 < f19194b) {
            f19195c = i10 + 1;
            a().reportCustomErr(str, "INNER", th2);
        }
    }
}
