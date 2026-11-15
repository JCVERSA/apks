package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class C2937vc extends C2706m5 implements Ta, Sa {
    public final C2418ag v;
    public final C2518eg w;
    public final L6 x;
    public final C2679l3 y;

    public C2937vc(@NonNull Context context, @NonNull Hl hl, @NonNull C2532f5 c2532f5, @NonNull F4 f4, @NonNull C2418ag c2418ag, @NonNull L6 l6, @NonNull AbstractC2656k5 abstractC2656k5) {
        this(context, c2532f5, hl, f4, new C2502e0(), new TimePassedChecker(), new C2987xc(context, c2532f5, f4, abstractC2656k5, hl, new C2813qc(l6), C2910ua.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C2910ua.j().w(), C2910ua.j().k(), new C2638jc()), c2418ag, l6);
    }

    @Override
    public final void B() {
        this.v.a(this.w);
    }

    public final boolean C() {
        boolean zOptBoolean;
        Un un = this.t;
        synchronized (un) {
            zOptBoolean = un.a.a().optBoolean("referrer_handled", false);
        }
        return zOptBoolean;
    }

    @Override
    public final synchronized void a(@NonNull F4 f4) {
        super.a(f4);
        this.x.a(f4.i);
    }

    @Override
    @NonNull
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.MAIN;
    }

    @Override
    public final void a(@NonNull Hl hl) {
        super.a(hl);
        this.y.a(hl);
    }

    @Override
    public final void a() {
        Un un = this.t;
        synchronized (un) {
            Vn vn = un.a;
            vn.a(vn.a().put("referrer_handled", true));
        }
    }

    public C2937vc(Context context, C2532f5 c2532f5, Hl hl, F4 f4, C2502e0 c2502e0, TimePassedChecker timePassedChecker, C2987xc c2987xc, C2418ag c2418ag, L6 l6) {
        super(context, c2532f5, c2502e0, timePassedChecker, c2987xc, f4);
        this.v = c2418ag;
        C2486d9 c2486d9J = j();
        c2486d9J.a(EnumC2588hb.EVENT_TYPE_REGULAR, new C2966wg(c2486d9J.b()));
        this.w = c2987xc.b(this);
        this.x = l6;
        C2679l3 c2679l3A = c2987xc.a(this);
        this.y = c2679l3A;
        c2679l3A.a(hl, f4.m);
    }
}
