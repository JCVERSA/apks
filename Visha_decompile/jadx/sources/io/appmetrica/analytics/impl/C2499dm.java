package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import defpackage.j1a;
import defpackage.y71;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.executors.SynchronizedBlockingExecutor;
import io.appmetrica.analytics.networktasks.internal.AllHostsExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseValidityChecker;
import io.appmetrica.analytics.networktasks.internal.FinalConfigProvider;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class C2499dm {
    public final C2524em a;
    public volatile NetworkTask b;

    public C2499dm(C2524em c2524em) {
        this.a = c2524em;
    }

    public final Context b() {
        return this.a.a;
    }

    public final synchronized NetworkTask c() {
        NetworkTask networkTask;
        try {
            if (g()) {
                networkTask = this.b;
                if (networkTask == null || networkTask.isRemoved()) {
                    Dl dlD = d();
                    Nd nd = Nd.a;
                    C3046zl c3046zl = new C3046zl(new Yd(), C2910ua.E.o());
                    FinalConfigProvider finalConfigProvider = new FinalConfigProvider(dlD);
                    networkTask = new NetworkTask(new SynchronizedBlockingExecutor(), new E9(this.a.a), new AllHostsExponentialBackoffPolicy(Nd.a.a(Ld.STARTUP)), new C2449bm(this, new C2896tl(), new FullUrlFormer(c3046zl, finalConfigProvider), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), finalConfigProvider), y71.k(), Nd.c);
                    this.b = networkTask;
                }
            } else {
                networkTask = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return networkTask;
    }

    public final Dl d() {
        return (Dl) this.a.l.a();
    }

    public final Hl e() {
        Hl hl;
        C2672kl c2672kl = this.a.l;
        synchronized (c2672kl) {
            hl = c2672kl.c.a;
        }
        return hl;
    }

    public final void f() {
        Hl hl;
        C2672kl c2672kl = this.a.l;
        synchronized (c2672kl) {
            hl = c2672kl.c.a;
        }
        Ll ll = hl.c;
        Kl klA = ll.a(ll.m);
        String strA = hl.a;
        String str = hl.b;
        Mn mn = this.a.n;
        String str2 = hl.d;
        mn.getClass();
        if (!Mn.a(str2)) {
            klA.a = this.a.m.a().id;
        }
        String str3 = hl.a;
        if (str3 == null || str3.length() == 0) {
            strA = this.a.h.a();
            str = "";
        }
        List<String> list = this.a.c.e;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        klA.g = list;
        Hl hl2 = new Hl(strA, str, new Ll(klA));
        b(hl2);
        a(hl2);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005c A[PHI: r2
      0x005c: PHI (r2v4 boolean) = (r2v3 boolean), (r2v7 boolean), (r2v7 boolean) binds: [B:13:0x0025, B:22:0x0057, B:23:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    public final synchronized boolean g() {
        boolean z;
        boolean z2;
        synchronized (this) {
            try {
                Hl hlE = e();
                Set set = El.a;
                boolean z3 = false;
                if (!hlE.w) {
                    z = El.b.currentTimeSeconds() > hlE.o + ((long) hlE.A.a);
                }
                if (!z) {
                    if (El.a(hlE.d) && El.a(hlE.a) && El.a(hlE.b)) {
                        z3 = true;
                    }
                    z = !z3;
                    W3 w3 = this.a.k;
                    Map map = d().h;
                    T3 t3 = this.a.j;
                    w3.getClass();
                    z2 = (!z3 || W3.a(map, hlE, t3)) ? z : true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public final synchronized void h() {
        this.b = null;
    }

    public final C2532f5 a() {
        return this.a.f;
    }

    public final synchronized void b(Hl hl) {
        this.a.l.a(hl);
        Gl gl = this.a.g;
        gl.b.a(hl.a);
        gl.b.b(hl.b);
        gl.a.save(hl.c);
        this.a.e.a(hl);
    }

    public final synchronized boolean a(List<String> list, Map<String, String> map) {
        return !El.a(e(), list, map, new C2474cm(this));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c  */
    @VisibleForTesting
    public final Hl a(Fl fl, Dl dl, long j) {
        String str;
        boolean zEquals;
        String strA = AbstractC2623im.a(dl.h);
        Map map = dl.i.a;
        String str2 = fl.j;
        String str3 = e().k;
        if (!AbstractC2623im.a(AbstractC2623im.a(str2))) {
            str2 = AbstractC2623im.a(AbstractC2623im.a(str3)) ? str3 : null;
        }
        String str4 = e().a;
        if (str4 != null) {
            str = j1a.o0(str4) ? null : str4;
            if (str == null) {
                str = fl.h;
            }
        } else {
            str = fl.h;
        }
        Kl kl = new Kl(fl.b);
        String str5 = fl.i;
        kl.o = this.a.i.currentTimeSeconds();
        kl.a = e().d;
        kl.c = fl.d;
        kl.f = fl.c;
        kl.g = dl.e;
        kl.b = fl.e;
        kl.d = fl.f;
        kl.e = fl.g;
        kl.h = fl.n;
        kl.i = fl.o;
        kl.j = str2;
        kl.k = strA;
        this.a.k.getClass();
        HashMap mapA = AbstractC2623im.a(str2);
        if (In.a(map)) {
            zEquals = In.a((Map) mapA);
        } else {
            zEquals = mapA.equals(map);
        }
        kl.q = zEquals;
        kl.l = AbstractC2623im.a(map);
        kl.r = fl.m;
        kl.n = fl.k;
        kl.s = fl.p;
        kl.p = true;
        kl.t = j;
        Dl dlD = d();
        if (dlD.n == 0) {
            dlD.n = j;
        }
        kl.u = dlD.n;
        kl.v = false;
        kl.w = fl.q;
        kl.y = fl.s;
        kl.x = fl.r;
        kl.z = fl.t;
        kl.A = fl.u;
        kl.B = fl.v;
        kl.C = fl.w;
        return new Hl(str, str5, new Ll(kl));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    public final void a(Fl fl, Dl dl, Map<String, ? extends List<String>> map) {
        Long lValueOf;
        Hl hlA;
        synchronized (this) {
            if (In.a((Map) map)) {
                lValueOf = null;
            } else {
                List list = (List) CollectionUtils.getFromMapIgnoreCase(map, "Date");
                if (In.a((Collection) list)) {
                    lValueOf = null;
                } else {
                    try {
                        lValueOf = Long.valueOf(new SimpleDateFormat("E, d MMM yyyy HH:mm:ss z", Locale.US).parse((String) list.get(0)).getTime());
                    } catch (Throwable unused) {
                        lValueOf = null;
                    }
                }
            }
            long jLongValue = lValueOf != null ? lValueOf.longValue() : 0L;
            Jj.a.a(jLongValue, fl.l);
            hlA = a(fl, dl, jLongValue);
            h();
            b(hlA);
            zfb zfbVar = zfb.a;
        }
        a(hlA);
    }

    public final void a(Hl hl) {
        ArrayList arrayList;
        C2524em c2524em = this.a;
        C2598hl c2598hl = c2524em.d;
        String str = c2524em.b;
        synchronized (c2598hl.a.b) {
            try {
                C2647jl c2647jl = c2598hl.a;
                c2647jl.c = hl;
                Collection collection = (Collection) c2647jl.a.a.get(str);
                if (collection == null) {
                    arrayList = new ArrayList();
                } else {
                    arrayList = new ArrayList(collection);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC2871sl) it.next()).a(hl);
        }
    }

    public final void a(EnumC2697ll enumC2697ll) {
        synchronized (this) {
            this.b = null;
        }
        C2524em c2524em = this.a;
        c2524em.d.a(c2524em.f.a, enumC2697ll, e());
    }

    public final synchronized void a(Bl bl) {
        try {
            this.a.l.a(bl);
            Dl dlD = d();
            if (dlD.k) {
                List list = dlD.j;
                if (list != null && !list.isEmpty()) {
                    if (!In.a(list, dlD.e)) {
                        Hl hlE = e();
                        Ll ll = hlE.c;
                        Kl klA = ll.a(ll.m);
                        String str = hlE.a;
                        String str2 = hlE.b;
                        klA.g = list;
                        Hl hl = new Hl(str, str2, new Ll(klA));
                        b(hl);
                        a(hl);
                    }
                } else {
                    List list2 = dlD.e;
                    if (list2 != null && (!list2.isEmpty())) {
                        Hl hlE2 = e();
                        Ll ll2 = hlE2.c;
                        Kl klA2 = ll2.a(ll2.m);
                        String str3 = hlE2.a;
                        String str4 = hlE2.b;
                        klA2.g = null;
                        Hl hl2 = new Hl(str3, str4, new Ll(klA2));
                        b(hl2);
                        a(hl2);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
