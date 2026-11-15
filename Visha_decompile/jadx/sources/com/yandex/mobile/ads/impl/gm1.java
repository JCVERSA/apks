package com.yandex.mobile.ads.impl;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.dm1;
import com.yandex.mobile.ads.impl.gm1;
import com.yandex.mobile.ads.impl.mi1;

public final class gm1 extends pk implements em1.b {
    private final jw0 h;
    private final jw0.f i;
    private final tv.a j;
    private final dm1.a k;
    private final i40 l;
    private final ds0 m;
    private final int n;
    private boolean o;
    private long p;
    private boolean q;
    private boolean r;

    @Nullable
    private d72 s;

    public static final class a implements vw0.a {
        private final tv.a a;
        private dm1.a b;
        private j40 c;
        private ds0 d;

        public a(tv.a aVar, final d80 d80Var) {
            this(aVar, new dm1.a() {
                @Override
                public final dm1 a(mi1 mi1Var) {
                    return gm1.a.a(d80Var, mi1Var);
                }
            });
        }

        public final gm1 a(jw0 jw0Var) {
            jw0Var.c.getClass();
            Object obj = jw0Var.c.g;
            return new gm1(jw0Var, this.a, this.b, this.c.a(jw0Var), this.d, 1048576);
        }

        public a(tv.a aVar, dm1.a aVar2) {
            this(aVar, aVar2, new tz(), new d00());
        }

        public a(tv.a aVar, dm1.a aVar2, tz tzVar, d00 d00Var) {
            this.a = aVar;
            this.b = aVar2;
            this.c = tzVar;
            this.d = d00Var;
        }

        public static dm1 a(d80 d80Var, mi1 mi1Var) {
            return new nm(d80Var);
        }
    }

    @Override
    public final pw0 a(vw0.b bVar, cd cdVar, long j) {
        tv tvVarA = this.j.a();
        d72 d72Var = this.s;
        if (d72Var != null) {
            tvVarA.a(d72Var);
        }
        return new em1(this.i.a, tvVarA, this.k.a(c()), this.l, a(bVar), this.m, b(bVar), this, cdVar, this.i.e, this.n);
    }

    @Override
    public final void e() {
        this.l.release();
    }

    @Override
    public final jw0 getMediaItem() {
        return this.h;
    }

    @Override
    public final void maybeThrowSourceInfoRefreshError() {
    }

    private gm1(jw0 jw0Var, tv.a aVar, dm1.a aVar2, i40 i40Var, ds0 ds0Var, int i) {
        this.i = (jw0.f) hg.a(jw0Var.c);
        this.h = jw0Var;
        this.j = aVar;
        this.k = aVar2;
        this.l = i40Var;
        this.m = ds0Var;
        this.n = i;
        this.o = true;
        this.p = C.TIME_UNSET;
    }

    public final void a(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.p;
        }
        if (!this.o && this.p == j && this.q == z && this.r == z2) {
            return;
        }
        this.p = j;
        this.q = z;
        this.r = z2;
        this.o = false;
        long j2 = this.p;
        cz1 cz1Var = new cz1(j2, j2, this.q, this.r, this.h);
        i52 fm1Var = cz1Var;
        if (this.o) {
            fm1Var = new fm1(cz1Var);
        }
        a(fm1Var);
    }

    @Override
    public final void a(@Nullable d72 d72Var) {
        this.s = d72Var;
        this.l.prepare();
        i40 i40Var = this.l;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        i40Var.a(looperMyLooper, c());
        long j = this.p;
        cz1 cz1Var = new cz1(j, j, this.q, this.r, this.h);
        i52 fm1Var = cz1Var;
        if (this.o) {
            fm1Var = new fm1(cz1Var);
        }
        a(fm1Var);
    }

    @Override
    public final void a(pw0 pw0Var) {
        ((em1) pw0Var).i();
    }
}
