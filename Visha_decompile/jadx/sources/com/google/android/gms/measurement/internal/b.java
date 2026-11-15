package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import defpackage.c9j;
import defpackage.u2j;
import defpackage.wd8;
import defpackage.zug;
import java.util.Iterator;
import java.util.Map;

public final class b extends zug {
    public final Map b;
    public final Map c;
    public long d;

    public b(e eVar) {
        super(eVar);
        this.c = new ArrayMap();
        this.b = new ArrayMap();
    }

    public static void h(b bVar, String str, long j) {
        bVar.g();
        wd8.f(str);
        if (bVar.c.isEmpty()) {
            bVar.d = j;
        }
        Integer num = (Integer) bVar.c.get(str);
        if (num != null) {
            bVar.c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (bVar.c.size() >= 100) {
            bVar.a.b().v().a("Too many ads visible");
        } else {
            bVar.c.put(str, 1);
            bVar.b.put(str, Long.valueOf(j));
        }
    }

    public static void i(b bVar, String str, long j) {
        bVar.g();
        wd8.f(str);
        Integer num = (Integer) bVar.c.get(str);
        if (num == null) {
            bVar.a.b().q().b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        u2j u2jVarR = bVar.a.K().r(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            bVar.c.put(str, Integer.valueOf(iIntValue));
            return;
        }
        bVar.c.remove(str);
        Long l = (Long) bVar.b.get(str);
        if (l == null) {
            bVar.a.b().q().a("First ad unit exposure time was never set");
        } else {
            long jLongValue = l.longValue();
            bVar.b.remove(str);
            bVar.o(str, j - jLongValue, u2jVarR);
        }
        if (bVar.c.isEmpty()) {
            long j2 = bVar.d;
            if (j2 == 0) {
                bVar.a.b().q().a("First ad exposure time was never set");
            } else {
                bVar.n(j - j2, u2jVarR);
                bVar.d = 0L;
            }
        }
    }

    public final void k(String str, long j) {
        if (str == null || str.length() == 0) {
            this.a.b().q().a("Ad unit id must be a non-empty string");
        } else {
            this.a.a().w(new zza(this, str, j));
        }
    }

    public final void l(String str, long j) {
        if (str == null || str.length() == 0) {
            this.a.b().q().a("Ad unit id must be a non-empty string");
        } else {
            this.a.a().w(new zzb(this, str, j));
        }
    }

    public final void m(long j) {
        u2j u2jVarR = this.a.K().r(false);
        for (String str : this.b.keySet()) {
            o(str, j - ((Long) this.b.get(str)).longValue(), u2jVarR);
        }
        if (!this.b.isEmpty()) {
            n(j - this.d, u2jVarR);
        }
        p(j);
    }

    public final void n(long j, u2j u2jVar) {
        if (u2jVar == null) {
            this.a.b().u().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            this.a.b().u().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        c9j.x(u2jVar, bundle, true);
        this.a.I().t("am", "_xa", bundle);
    }

    public final void o(String str, long j, u2j u2jVar) {
        if (u2jVar == null) {
            this.a.b().u().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            this.a.b().u().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        c9j.x(u2jVar, bundle, true);
        this.a.I().t("am", "_xu", bundle);
    }

    public final void p(long j) {
        Iterator it = this.b.keySet().iterator();
        while (it.hasNext()) {
            this.b.put((String) it.next(), Long.valueOf(j));
        }
        if (this.b.isEmpty()) {
            return;
        }
        this.d = j;
    }
}
