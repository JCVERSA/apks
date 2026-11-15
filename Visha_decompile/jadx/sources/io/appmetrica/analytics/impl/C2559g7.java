package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.common.TableDescription;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class C2559g7 {
    public static volatile C2559g7 t;
    public final Context e;
    public C2534f7 f;
    public C2534f7 g;
    public C2704m3 h;
    public C2729n3 i;
    public C2704m3 j;
    public C2729n3 k;
    public C2986xb l;
    public C3011yb m;
    public Pm n;
    public Qm o;
    public C2986xb p;
    public C3011yb q;
    public C2514ec r;
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final T6 d = J5.a();
    public final C2609i7 s = new C2609i7();

    public C2559g7(Context context) {
        this.e = context;
    }

    public static C2559g7 a(Context context) {
        if (t == null) {
            synchronized (C2559g7.class) {
                try {
                    if (t == null) {
                        t = new C2559g7(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t;
    }

    public final synchronized Oa b(C2532f5 c2532f5) {
        Oa c2986xb;
        String str = new Y4(c2532f5).a;
        c2986xb = (Oa) this.b.get(str);
        if (c2986xb == null) {
            c2986xb = new C2986xb(new Sk(c(c2532f5)));
            this.b.put(str, c2986xb);
        }
        return c2986xb;
    }

    public final synchronized C2534f7 c(C2532f5 c2532f5) {
        C2534f7 c2534f7;
        try {
            Y4 y4 = new Y4(c2532f5);
            c2534f7 = (C2534f7) this.a.get(y4.a);
            if (c2534f7 == null) {
                Context context = this.e;
                C2609i7 c2609i7 = this.s;
                String strA = new C2584h7(c2609i7.a, c2609i7.b, false).a(context, y4);
                T6 t6 = this.d;
                t6.getClass();
                String str = c2532f5.b;
                if (str == null) {
                    str = "main";
                }
                String str2 = String.format("component-%s", str);
                Gm gm = t6.c;
                C2484d7 c2484d7 = t6.a;
                V6 v6 = c2484d7.a;
                W6 w6 = c2484d7.b;
                C2960wa c2960wa = new C2960wa(false);
                c2960wa.a(112, new C2432b5());
                Im im = new Im(str2, t6.b.a);
                gm.getClass();
                c2534f7 = new C2534f7(context, strA, new Hm(v6, w6, c2960wa, im), PublicLogger.getAnonymousInstance());
                this.a.put(y4.a, c2534f7);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2534f7;
    }

    public final synchronized Oa d() {
        try {
            if (this.l == null) {
                this.l = new C2986xb(new Sk(h()));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.l;
    }

    public final IBinaryDataHelper e() {
        if (this.j == null) {
            if (this.g == null) {
                Context context = this.e;
                C2609i7 c2609i7 = this.s;
                String strA = new C2584h7(c2609i7.a, c2609i7.b, false).a(context, new C3027z2());
                T6 t6 = this.d;
                t6.getClass();
                HashMap map = new HashMap();
                map.put("binary_data", E5.a);
                Gm gm = t6.c;
                C2484d7 c2484d7 = t6.a;
                X6 x6 = c2484d7.g;
                Y6 y6 = c2484d7.h;
                C2960wa c2960wa = new C2960wa(false);
                Im im = new Im("auto_inapp", map);
                gm.getClass();
                this.g = new C2534f7(context, strA, new Hm(x6, y6, c2960wa, im), PublicLogger.getAnonymousInstance());
            }
            this.j = new C2704m3(new Sk(this.g));
        }
        return this.j;
    }

    public final Oa f() {
        C2514ec c2514ec;
        if (this.p == null) {
            synchronized (this) {
                try {
                    if (this.r == null) {
                        C2609i7 c2609i7 = this.s;
                        String strA = new C2584h7(c2609i7.a, c2609i7.b, true).a(this.e, new C2531f4());
                        Context context = this.e;
                        T6 t6 = this.d;
                        t6.getClass();
                        HashMap map = new HashMap();
                        map.put("preferences", G5.a);
                        Gm gm = t6.c;
                        C2484d7 c2484d7 = t6.a;
                        Z6 z6 = c2484d7.c;
                        C2409a7 c2409a7 = c2484d7.d;
                        C2960wa c2960wa = new C2960wa(false);
                        c2960wa.a(112, new C2556g4());
                        Im im = new Im("service database", map);
                        gm.getClass();
                        this.r = new C2514ec(context, strA, new C2537fa(strA), new Hm(z6, c2409a7, c2960wa, im));
                    }
                    c2514ec = this.r;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.p = new C2986xb(c2514ec);
        }
        return this.p;
    }

    public final IBinaryDataHelper g() {
        if (this.h == null) {
            this.h = new C2704m3(new Sk(h()));
        }
        return this.h;
    }

    public final synchronized C2534f7 h() {
        try {
            if (this.f == null) {
                Context context = this.e;
                C2609i7 c2609i7 = this.s;
                String strA = new C2584h7(c2609i7.a, c2609i7.b, true).a(context, new Qj());
                T6 t6 = this.d;
                t6.getClass();
                HashMap map = new HashMap();
                map.put("preferences", G5.a);
                map.put("binary_data", E5.a);
                map.put("temp_cache", Sm.a);
                Iterator<ModuleServicesDatabase> it = C2910ua.E.o().b().iterator();
                while (it.hasNext()) {
                    for (TableDescription tableDescription : it.next().getTables()) {
                        map.put(tableDescription.getTableName(), tableDescription.getColumnNames());
                    }
                }
                Gm gm = t6.c;
                C2484d7 c2484d7 = t6.a;
                C2434b7 c2434b7 = c2484d7.e;
                C2459c7 c2459c7 = c2484d7.f;
                C2960wa c2960wa = new C2960wa(false);
                c2960wa.a(114, new Rj());
                Iterator<ModuleServicesDatabase> it2 = C2910ua.E.o().b().iterator();
                while (it2.hasNext()) {
                    Iterator<TableDescription> it3 = it2.next().getTables().iterator();
                    while (it3.hasNext()) {
                        for (Map.Entry<Integer, DatabaseScript> entry : it3.next().getDatabaseProviderUpgradeScript().entrySet()) {
                            c2960wa.a(entry.getKey(), entry.getValue());
                        }
                    }
                }
                Im im = new Im("service database", map);
                gm.getClass();
                this.f = new C2534f7(context, strA, new Hm(c2434b7, c2459c7, c2960wa, im), PublicLogger.getAnonymousInstance());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f;
    }

    public final synchronized IBinaryDataHelper a(C2532f5 c2532f5) {
        IBinaryDataHelper c2704m3;
        String str = new Y4(c2532f5).a;
        c2704m3 = (IBinaryDataHelper) this.c.get(str);
        if (c2704m3 == null) {
            c2704m3 = new C2704m3(new Sk(c(c2532f5)));
            this.c.put(str, c2704m3);
        }
        return c2704m3;
    }

    public final synchronized Oa b() {
        return f();
    }

    public final synchronized Oa a() {
        try {
            if (this.q == null) {
                this.q = new C3011yb(f());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.q;
    }

    public final synchronized Oa c() {
        try {
            if (this.m == null) {
                if (this.l == null) {
                    this.l = new C2986xb(new Sk(h()));
                }
                this.m = new C3011yb(this.l);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.m;
    }
}
