package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class g5 {
    private final Object a = new Object();
    private final yg1 b = new yg1();
    private final LinkedHashMap c = new LinkedHashMap();
    private final ArrayList d = new ArrayList();

    public final void a() {
        synchronized (this.a) {
            this.c.clear();
            this.d.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public final List<e5> b() {
        List<e5> listB1;
        synchronized (this.a) {
            listB1 = defpackage.i81.b1(this.d);
        }
        return listB1;
    }

    public final void b(f5 f5Var) {
        y45.j(f5Var, "adLoadingPhaseType");
        a(f5Var, null);
    }

    public final void a(f5 f5Var) {
        y45.j(f5Var, "adLoadingPhaseType");
        yg1 yg1Var = this.b;
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(yg1Var, "parametersProvider");
        a(f5Var, yg1Var, null);
    }

    public final void a(f5 f5Var, zg1 zg1Var, ha2 ha2Var) {
        Long l;
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(zg1Var, "parametersProvider");
        synchronized (this.a) {
            try {
                Map map = (Map) this.c.get(f5Var);
                Long lValueOf = (map == null || (l = (Long) map.get(ha2Var)) == null) ? null : Long.valueOf(SystemClock.elapsedRealtime() - l.longValue());
                if (lValueOf != null) {
                    this.d.add(new e5(f5Var, zg1Var.a(lValueOf.longValue())));
                }
                Map map2 = (Map) this.c.get(f5Var);
                if (map2 != null) {
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(f5 f5Var, ha2 ha2Var) {
        y45.j(f5Var, "adLoadingPhaseType");
        synchronized (this.a) {
            try {
                Map linkedHashMap = (Map) this.c.get(f5Var);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                this.c.put(f5Var, linkedHashMap);
                linkedHashMap.put(ha2Var, Long.valueOf(SystemClock.elapsedRealtime()));
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
