package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public abstract class s {

    private static final String f15373a;

    static {
        String strI = androidx.work.j.i("WakeLocks");
        Intrinsics.g(strI, "tagWithPrefix(\"WakeLocks\")");
        f15373a = strI;
    }

    public static final void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        t tVar = t.f15374a;
        synchronized (tVar) {
            linkedHashMap.putAll(tVar.a());
            Unit unit = Unit.f64096a;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) entry.getKey();
            String str = (String) entry.getValue();
            if (wakeLock != null && wakeLock.isHeld()) {
                androidx.work.j.e().k(f15373a, "WakeLock held for " + str);
            }
        }
    }

    public static final PowerManager.WakeLock b(Context context, String tag) {
        Intrinsics.h(context, "context");
        Intrinsics.h(tag, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String str = "WorkManager: " + tag;
        PowerManager.WakeLock wakeLock = ((PowerManager) systemService).newWakeLock(1, str);
        t tVar = t.f15374a;
        synchronized (tVar) {
        }
        Intrinsics.g(wakeLock, "wakeLock");
        return wakeLock;
    }
}
