package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.C;

public final class cz1 extends i52 {
    private static final Object p = new Object();
    private final long c;
    private final long d;
    private final long e;
    private final long f;
    private final long g;
    private final long h;
    private final long i;
    private final boolean j;
    private final boolean k;
    private final boolean l;

    @Nullable
    private final Object m;

    @Nullable
    private final jw0 n;

    @Nullable
    private final jw0.e o;

    static {
        new jw0.a().b("SinglePeriodTimeline").a(Uri.EMPTY).a();
    }

    public cz1(long j, long j2, boolean z, jw0 jw0Var, @Nullable jw0.e eVar) {
        this.c = C.TIME_UNSET;
        this.d = C.TIME_UNSET;
        this.e = C.TIME_UNSET;
        this.f = j;
        this.g = j2;
        this.h = 0L;
        this.i = 0L;
        this.j = z;
        this.k = false;
        this.l = false;
        this.m = null;
        this.n = (jw0) hg.a(jw0Var);
        this.o = eVar;
    }

    @Override
    public final int a() {
        return 1;
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final i52.b a(int i, i52.b bVar, boolean z) {
        hg.a(i, 1);
        Object obj = z ? p : null;
        long j = this.f;
        long j2 = -this.h;
        bVar.getClass();
        return bVar.a(null, obj, 0, j, j2, n5.h, false);
    }

    @Override
    public final Object a(int i) {
        hg.a(i, 1);
        return p;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d A[PHI: r1
      0x002d: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v4 long) binds: [B:3:0x000c, B:5:0x0010, B:7:0x0016, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final i52.d a(int i, i52.d dVar, long j) {
        long j2;
        hg.a(i, 1);
        long j3 = this.i;
        boolean z = this.k;
        if (!z || this.l || j == 0) {
            j2 = j3;
        } else {
            long j4 = this.g;
            if (j4 != C.TIME_UNSET) {
                j3 += j;
                if (j3 <= j4) {
                    j2 = j3;
                }
            }
            j2 = -9223372036854775807L;
        }
        return dVar.a(i52.d.s, this.n, this.m, this.c, this.d, this.e, this.j, z, this.o, j2, this.g, 0, 0, this.h);
    }

    @Override
    public final int a(Object obj) {
        return p.equals(obj) ? 0 : -1;
    }

    public cz1(long j, long j2, boolean z, boolean z2, jw0 jw0Var) {
        this(j, j2, z, jw0Var, z2 ? jw0Var.d : null);
    }
}
