package androidx.work.impl;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class v {

    private final Object f15381a = new Object();

    private final Map f15382b = new LinkedHashMap();

    public final boolean a(j4.m id2) {
        boolean zContainsKey;
        Intrinsics.h(id2, "id");
        synchronized (this.f15381a) {
            zContainsKey = this.f15382b.containsKey(id2);
        }
        return zContainsKey;
    }

    public final u b(j4.m id2) {
        u uVar;
        Intrinsics.h(id2, "id");
        synchronized (this.f15381a) {
            uVar = (u) this.f15382b.remove(id2);
        }
        return uVar;
    }

    public final List c(String workSpecId) {
        List listR0;
        Intrinsics.h(workSpecId, "workSpecId");
        synchronized (this.f15381a) {
            try {
                Map map = this.f15382b;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (Intrinsics.c(((j4.m) entry.getKey()).b(), workSpecId)) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                Iterator it = linkedHashMap.keySet().iterator();
                while (it.hasNext()) {
                    this.f15382b.remove((j4.m) it.next());
                }
                listR0 = CollectionsKt.R0(linkedHashMap.values());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return listR0;
    }

    public final u d(j4.m id2) {
        u uVar;
        Intrinsics.h(id2, "id");
        synchronized (this.f15381a) {
            try {
                Map map = this.f15382b;
                Object uVar2 = map.get(id2);
                if (uVar2 == null) {
                    uVar2 = new u(id2);
                    map.put(id2, uVar2);
                }
                uVar = (u) uVar2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uVar;
    }

    public final u e(j4.u spec) {
        Intrinsics.h(spec, "spec");
        return d(j4.x.a(spec));
    }
}
