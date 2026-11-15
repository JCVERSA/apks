package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import defpackage.abb;
import defpackage.s86;
import defpackage.z71;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.impl.C2468cg;
import io.appmetrica.analytics.impl.C2692lg;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class C2692lg {
    public final Context a;
    public final SafePackageManager b;
    public final Ya c;
    public final Jc d;
    public final long e;
    public final String f;
    public final String g;

    public C2692lg(Context context, SafePackageManager safePackageManager, Ya ya) {
        this.a = context;
        this.b = safePackageManager;
        this.c = ya;
        Jc jc = new Jc(0);
        jc.a(EnumC2443bg.d, 1);
        jc.a(EnumC2443bg.c, 2);
        this.d = jc;
        this.e = TimeUnit.DAYS.toSeconds(1L);
        this.f = "com.android.vending";
        this.g = "com.huawei.appmarket";
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0098  */
    public final C2468cg a(List list) {
        C2468cg c2468cg;
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() == 1) {
            return (C2468cg) list.get(0);
        }
        SafePackageManager safePackageManager = this.b;
        Context context = this.a;
        PackageInfo packageInfo = safePackageManager.getPackageInfo(context, context.getPackageName(), 0);
        if (packageInfo != null) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(packageInfo.firstInstallTime);
            Iterator it = list.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
            C2468cg c2468cg2 = (C2468cg) it.next();
            Pair pairA = abb.a(c2468cg2, Long.valueOf(Math.abs(c2468cg2.c - seconds)));
            while (it.hasNext()) {
                C2468cg c2468cg3 = (C2468cg) it.next();
                Pair pairA2 = abb.a(c2468cg3, Long.valueOf(Math.abs(c2468cg3.c - seconds)));
                if (kotlin.comparisons.a.d((Comparable) pairA.getSecond(), (Comparable) pairA2.getSecond()) > 0) {
                    pairA = pairA2;
                }
            }
            c2468cg = (C2468cg) pairA.component1();
            if (((Number) pairA.component2()).longValue() >= this.e) {
                c2468cg = null;
            }
        } else {
            c2468cg = null;
        }
        if (c2468cg == null) {
            Comparator comparator = new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return C2692lg.a(this.b, (C2468cg) obj, (C2468cg) obj2);
                }
            };
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            C2468cg c2468cg4 = (C2468cg) it2.next();
            while (it2.hasNext()) {
                C2468cg c2468cg5 = (C2468cg) it2.next();
                if (comparator.compare(c2468cg4, c2468cg5) < 0) {
                    c2468cg4 = c2468cg5;
                }
            }
            c2468cg = c2468cg4;
        }
        Ya ya = this.c;
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            C2468cg c2468cg6 = (C2468cg) it3.next();
            arrayList.add(new JSONObject().put("referrer", c2468cg6.a).put("install_timestamp_seconds", c2468cg6.c).put("click_timestamp_seconds", c2468cg6.b).put("source", c2468cg6.d.a));
        }
        ya.reportEvent("several_filled_referrers", jSONObject.put("candidates", In.a((Collection) arrayList) ? null : new JSONArray((Collection) arrayList)).put("chosen", new JSONObject().put("referrer", c2468cg.a).put("install_timestamp_seconds", c2468cg.c).put("click_timestamp_seconds", c2468cg.b).put("source", c2468cg.d.a)).putOpt("install_time", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : null).toString());
        return c2468cg;
    }

    public C2692lg(Context context) {
        this(context, new SafePackageManager(), AbstractC2802q1.a());
    }

    public static final int a(C2692lg c2692lg, C2468cg c2468cg, C2468cg c2468cg2) {
        int iA = s86.a(c2468cg.c - c2468cg2.c);
        return iA == 0 ? ((Number) c2692lg.d.a(c2468cg.d)).intValue() - ((Number) c2692lg.d.a(c2468cg2.d)).intValue() : iA;
    }
}
