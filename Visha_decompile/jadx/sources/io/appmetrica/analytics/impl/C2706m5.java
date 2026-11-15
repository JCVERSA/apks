package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.x71;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Iterator;

public class C2706m5 implements Wa, La, InterfaceC2444bh {
    public final Context a;
    public final C2532f5 b;
    public final Le c;
    public final Oe d;
    public final S6 e;
    public final C2669ki f;
    public final C2486d9 g;
    public final C2477d0 h;
    public final C2502e0 i;
    public final C2945vk j;
    public final Fg k;
    public final Q8 l;
    public final PublicLogger m;
    public final C2810q9 n;
    public final C2582h5 o;
    public final InterfaceC2959w9 p;
    public final G3 q;
    public final TimePassedChecker r;
    public final Cif s;
    public final Un t;
    public final C2746nk u;

    public C2706m5(@NonNull Context context, @NonNull Hl hl, @NonNull C2532f5 c2532f5, @NonNull F4 f4, @NonNull Zg zg, @NonNull AbstractC2656k5 abstractC2656k5) {
        this(context, c2532f5, new C2502e0(), new TimePassedChecker(), new C2830r5(context, c2532f5, f4, abstractC2656k5, hl, zg, C2910ua.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C2910ua.j().k(), new C2507e5()), f4);
    }

    public final boolean A() {
        Hl hl;
        Cif cif = this.s;
        cif.h.a(cif.a);
        boolean z = ((C2542ff) cif.c()).d;
        Fg fg = this.k;
        synchronized (fg) {
            hl = fg.c.a;
        }
        return !(z && hl.q);
    }

    public void B() {
    }

    @Override
    public final void a(@NonNull EnumC2697ll enumC2697ll, @Nullable Hl hl) {
    }

    @Override
    @NonNull
    public final C2532f5 b() {
        return this.b;
    }

    @NonNull
    public CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.MANUAL;
    }

    public final void d() {
        C2477d0 c2477d0 = this.h;
        synchronized (c2477d0) {
            c2477d0.a = new Lc();
        }
        this.i.a(this.h.a(), this.c);
    }

    public final synchronized void e() {
        ((C2980x5) this.p).c();
    }

    @NonNull
    public final G3 f() {
        return this.q;
    }

    @NonNull
    public final Le g() {
        return this.c;
    }

    @Override
    @NonNull
    public final Context getContext() {
        return this.a;
    }

    @NonNull
    public final S6 h() {
        return this.e;
    }

    @NonNull
    public final Q8 i() {
        return this.l;
    }

    @NonNull
    public final C2486d9 j() {
        return this.g;
    }

    @NonNull
    public final C2810q9 k() {
        return this.n;
    }

    @NonNull
    public final InterfaceC2959w9 l() {
        return this.p;
    }

    @NonNull
    public final C2469ch m() {
        return (C2469ch) this.k.a();
    }

    @Nullable
    public final String n() {
        return this.c.i();
    }

    @NonNull
    public final PublicLogger o() {
        return this.m;
    }

    @NonNull
    public final Oe p() {
        return this.d;
    }

    @NonNull
    public final C2746nk q() {
        return this.u;
    }

    @NonNull
    public final C2945vk r() {
        return this.j;
    }

    @NonNull
    public final Hl s() {
        Hl hl;
        Fg fg = this.k;
        synchronized (fg) {
            hl = fg.c.a;
        }
        return hl;
    }

    @NonNull
    public final Un t() {
        return this.t;
    }

    public final void u() {
        C2810q9 c2810q9 = this.n;
        int i = c2810q9.k;
        c2810q9.m = i;
        c2810q9.a.a(i).b();
    }

    public final void v() {
        int iOptInt;
        int libraryApiLevel = AppMetrica.getLibraryApiLevel();
        Un un = this.t;
        synchronized (un) {
            iOptInt = un.a.a().optInt("last_migration_api_level", 0);
        }
        if (iOptInt < libraryApiLevel) {
            this.o.getClass();
            Iterator it = x71.e(new C2631j5(this)).iterator();
            while (it.hasNext()) {
                ((AbstractC2607i5) it.next()).a(iOptInt);
            }
            this.t.b(libraryApiLevel);
        }
    }

    public final boolean w() {
        C2469ch c2469ch = (C2469ch) this.k.a();
        return c2469ch.n && c2469ch.isIdentifiersValid() && this.r.didTimePassSeconds(this.n.l, c2469ch.s, "need to check permissions");
    }

    public final boolean x() {
        C2810q9 c2810q9 = this.n;
        return c2810q9.m < c2810q9.k && ((C2469ch) this.k.a()).o && ((C2469ch) this.k.a()).isIdentifiersValid();
    }

    public final void y() {
        Fg fg = this.k;
        synchronized (fg) {
            fg.a = null;
        }
    }

    public final boolean z() {
        C2469ch c2469ch = (C2469ch) this.k.a();
        return c2469ch.n && this.r.didTimePassSeconds(this.n.l, c2469ch.t, "should force send permissions");
    }

    @Override
    public final void a(@NonNull C2408a6 c2408a6) {
        String strA = Df.a("Event received on service", EnumC2588hb.a(c2408a6.d), c2408a6.getName(), c2408a6.getValue());
        if (strA != null) {
            this.m.info(strA, new Object[0]);
        }
        String str = this.b.b;
        if (TextUtils.isEmpty(str) || "-1".equals(str)) {
            return;
        }
        this.f.a(c2408a6, new C2644ji());
    }

    public final void b(C2408a6 c2408a6) {
        this.h.a(c2408a6.f);
        C2452c0 c2452c0A = this.h.a();
        C2502e0 c2502e0 = this.i;
        Le le = this.c;
        synchronized (c2502e0) {
            if (c2452c0A.b > le.d().b) {
                le.a(c2452c0A).b();
                this.m.info("Save new app environment for %s. Value: %s", this.b, c2452c0A.a);
            }
        }
    }

    public C2706m5(Context context, C2532f5 c2532f5, C2502e0 c2502e0, TimePassedChecker timePassedChecker, C2830r5 c2830r5, F4 f4) {
        this.a = context.getApplicationContext();
        this.b = c2532f5;
        this.i = c2502e0;
        this.r = timePassedChecker;
        Un unF = c2830r5.f();
        this.t = unF;
        this.s = C2910ua.j().s();
        Fg fgA = c2830r5.a(this);
        this.k = fgA;
        PublicLogger publicLoggerA = c2830r5.d().a();
        this.m = publicLoggerA;
        Le leA = c2830r5.e().a();
        this.c = leA;
        this.d = C2910ua.j().x();
        C2477d0 c2477d0A = c2502e0.a(c2532f5, publicLoggerA, leA);
        this.h = c2477d0A;
        this.l = c2830r5.a();
        S6 s6B = c2830r5.b(this);
        this.e = s6B;
        C2719mi c2719miD = c2830r5.d(this);
        this.o = C2830r5.b();
        v();
        C2945vk c2945vkA = C2830r5.a(this, unF, new C2681l5(this));
        this.j = c2945vkA;
        publicLoggerA.info("Read app environment for component %s. Value: %s", c2532f5.toString(), c2477d0A.a().a);
        C2746nk c2746nkC = c2830r5.c();
        this.u = c2746nkC;
        this.n = c2830r5.a(leA, unF, c2945vkA, s6B, c2477d0A, c2746nkC, c2719miD);
        C2486d9 c2486d9C = C2830r5.c(this);
        this.g = c2486d9C;
        this.f = C2830r5.a(this, c2486d9C);
        this.q = c2830r5.a(leA);
        this.p = c2830r5.a(c2719miD, s6B, fgA, f4, c2532f5, leA);
        s6B.d();
    }

    @Override
    public synchronized void a(@NonNull F4 f4) {
        try {
            this.k.a(f4);
            if (Boolean.TRUE.equals(f4.h)) {
                this.m.setEnabled(true);
            } else {
                if (Boolean.FALSE.equals(f4.h)) {
                    this.m.setEnabled(false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void a(@NonNull Hl hl) {
        this.k.a(hl);
        ((C2980x5) this.p).d();
    }

    public final void a(@Nullable String str) {
        this.c.j(str).b();
    }
}
