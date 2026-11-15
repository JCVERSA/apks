package am;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.collection.s;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f407a = new e();

    private static final ConcurrentHashMap f408b = new ConcurrentHashMap();

    private static final ConcurrentHashMap f409c = new ConcurrentHashMap();

    private e() {
    }

    public final List a(int i10) {
        return (List) f408b.remove(Integer.valueOf(i10));
    }

    public final int b(List preloadList) {
        ConcurrentHashMap concurrentHashMap;
        Intrinsics.h(preloadList, "preloadList");
        int iHashCode = preloadList.hashCode();
        while (true) {
            concurrentHashMap = f408b;
            if (!concurrentHashMap.containsKey(Integer.valueOf(iHashCode))) {
                break;
            }
            iHashCode = (iHashCode << 1) | s.a(SystemClock.elapsedRealtimeNanos());
        }
        concurrentHashMap.put(Integer.valueOf(iHashCode), preloadList);
        Iterator it = preloadList.iterator();
        while (it.hasNext()) {
            b.g((b) it.next(), null, 1, null);
        }
        return iHashCode;
    }

    public final int c(b... preload) {
        Intrinsics.h(preload, "preload");
        return b(ArraysKt.G0(preload));
    }

    public final void d(String str, Bundle bundle) {
        List listA;
        c cVar = (c) f409c.get(str);
        if (cVar == null || (listA = cVar.a(str, bundle)) == null) {
            return;
        }
        int iB = f407a.b(listA);
        if (bundle != null) {
            bundle.putInt("yy_preload_id", iB);
        }
    }

    public final void e(c interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        wf.a.C0922a.f(wf.a.f74274a, "IPreload", "regInterceptor", false, 4, null);
        f409c.put(interceptor.getPath(), interceptor);
    }
}
