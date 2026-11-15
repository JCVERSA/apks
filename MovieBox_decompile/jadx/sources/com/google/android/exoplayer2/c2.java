package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

final class c2 {

    public final com.google.android.exoplayer2.source.n f24168a;

    public final Object f24169b;

    public final v9.s[] f24170c;

    public boolean f24171d;

    public boolean f24172e;

    public d2 f24173f;

    public boolean f24174g;

    private final boolean[] f24175h;

    private final a3[] f24176i;

    private final na.b0 f24177j;

    private final i2 f24178k;

    private c2 f24179l;

    private v9.y f24180m;

    private na.c0 f24181n;

    private long f24182o;

    public c2(a3[] a3VarArr, long j10, na.b0 b0Var, com.google.android.exoplayer2.upstream.b bVar, i2 i2Var, d2 d2Var, na.c0 c0Var) {
        this.f24176i = a3VarArr;
        this.f24182o = j10;
        this.f24177j = b0Var;
        this.f24178k = i2Var;
        com.google.android.exoplayer2.source.o.b bVar2 = d2Var.f24185a;
        this.f24169b = bVar2.f73504a;
        this.f24173f = d2Var;
        this.f24180m = v9.y.f73559d;
        this.f24181n = c0Var;
        this.f24170c = new v9.s[a3VarArr.length];
        this.f24175h = new boolean[a3VarArr.length];
        this.f24168a = e(bVar2, i2Var, bVar, d2Var.f24186b, d2Var.f24188d);
    }

    private void c(v9.s[] sVarArr) {
        int i10 = 0;
        while (true) {
            a3[] a3VarArr = this.f24176i;
            if (i10 >= a3VarArr.length) {
                return;
            }
            if (a3VarArr[i10].getTrackType() == -2 && this.f24181n.c(i10)) {
                sVarArr[i10] = new v9.g();
            }
            i10++;
        }
    }

    private static com.google.android.exoplayer2.source.n e(com.google.android.exoplayer2.source.o.b bVar, i2 i2Var, com.google.android.exoplayer2.upstream.b bVar2, long j10, long j11) {
        com.google.android.exoplayer2.source.n nVarH = i2Var.h(bVar, bVar2, j10);
        return j11 != C.TIME_UNSET ? new com.google.android.exoplayer2.source.b(nVarH, true, 0L, j11) : nVarH;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            na.c0 c0Var = this.f24181n;
            if (i10 >= c0Var.f67015a) {
                return;
            }
            boolean zC = c0Var.c(i10);
            na.s sVar = this.f24181n.f67017c[i10];
            if (zC && sVar != null) {
                sVar.disable();
            }
            i10++;
        }
    }

    private void g(v9.s[] sVarArr) {
        int i10 = 0;
        while (true) {
            a3[] a3VarArr = this.f24176i;
            if (i10 >= a3VarArr.length) {
                return;
            }
            if (a3VarArr[i10].getTrackType() == -2) {
                sVarArr[i10] = null;
            }
            i10++;
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            na.c0 c0Var = this.f24181n;
            if (i10 >= c0Var.f67015a) {
                return;
            }
            boolean zC = c0Var.c(i10);
            na.s sVar = this.f24181n.f67017c[i10];
            if (zC && sVar != null) {
                sVar.enable();
            }
            i10++;
        }
    }

    private boolean r() {
        return this.f24179l == null;
    }

    private static void u(i2 i2Var, com.google.android.exoplayer2.source.n nVar) {
        try {
            if (nVar instanceof com.google.android.exoplayer2.source.b) {
                i2Var.y(((com.google.android.exoplayer2.source.b) nVar).f25058a);
            } else {
                i2Var.y(nVar);
            }
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.s.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A() {
        com.google.android.exoplayer2.source.n nVar = this.f24168a;
        if (nVar instanceof com.google.android.exoplayer2.source.b) {
            long j10 = this.f24173f.f24188d;
            if (j10 == C.TIME_UNSET) {
                j10 = Long.MIN_VALUE;
            }
            ((com.google.android.exoplayer2.source.b) nVar).l(0L, j10);
        }
    }

    public long a(na.c0 c0Var, long j10, boolean z10) {
        return b(c0Var, j10, z10, new boolean[this.f24176i.length]);
    }

    public long b(na.c0 c0Var, long j10, boolean z10, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= c0Var.f67015a) {
                break;
            }
            boolean[] zArr2 = this.f24175h;
            if (z10 || !c0Var.b(this.f24181n, i10)) {
                z11 = false;
            }
            zArr2[i10] = z11;
            i10++;
        }
        g(this.f24170c);
        f();
        this.f24181n = c0Var;
        h();
        long jE = this.f24168a.e(c0Var.f67017c, this.f24175h, this.f24170c, zArr, j10);
        c(this.f24170c);
        this.f24172e = false;
        int i11 = 0;
        while (true) {
            v9.s[] sVarArr = this.f24170c;
            if (i11 >= sVarArr.length) {
                return jE;
            }
            if (sVarArr[i11] != null) {
                com.google.android.exoplayer2.util.a.g(c0Var.c(i11));
                if (this.f24176i[i11].getTrackType() != -2) {
                    this.f24172e = true;
                }
            } else {
                com.google.android.exoplayer2.util.a.g(c0Var.f67017c[i11] == null);
            }
            i11++;
        }
    }

    public void d(long j10) {
        com.google.android.exoplayer2.util.a.g(r());
        this.f24168a.continueLoading(y(j10));
    }

    public long i() {
        if (!this.f24171d) {
            return this.f24173f.f24186b;
        }
        long bufferedPositionUs = this.f24172e ? this.f24168a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f24173f.f24189e : bufferedPositionUs;
    }

    public c2 j() {
        return this.f24179l;
    }

    public long k() {
        if (this.f24171d) {
            return this.f24168a.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long l() {
        return this.f24182o;
    }

    public long m() {
        return this.f24173f.f24186b + this.f24182o;
    }

    public v9.y n() {
        return this.f24180m;
    }

    public na.c0 o() {
        return this.f24181n;
    }

    public void p(float f10, l3 l3Var) {
        this.f24171d = true;
        this.f24180m = this.f24168a.getTrackGroups();
        na.c0 c0VarV = v(f10, l3Var);
        d2 d2Var = this.f24173f;
        long jMax = d2Var.f24186b;
        long j10 = d2Var.f24189e;
        if (j10 != C.TIME_UNSET && jMax >= j10) {
            jMax = Math.max(0L, j10 - 1);
        }
        long jA = a(c0VarV, jMax, false);
        long j11 = this.f24182o;
        d2 d2Var2 = this.f24173f;
        this.f24182o = j11 + (d2Var2.f24186b - jA);
        this.f24173f = d2Var2.b(jA);
    }

    public boolean q() {
        return this.f24171d && (!this.f24172e || this.f24168a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void s(long j10) {
        com.google.android.exoplayer2.util.a.g(r());
        if (this.f24171d) {
            this.f24168a.reevaluateBuffer(y(j10));
        }
    }

    public void t() {
        f();
        u(this.f24178k, this.f24168a);
    }

    public na.c0 v(float f10, l3 l3Var) {
        na.c0 c0VarH = this.f24177j.h(this.f24176i, n(), this.f24173f.f24185a, l3Var);
        for (na.s sVar : c0VarH.f67017c) {
            if (sVar != null) {
                sVar.onPlaybackSpeed(f10);
            }
        }
        return c0VarH;
    }

    public void w(c2 c2Var) {
        if (c2Var == this.f24179l) {
            return;
        }
        f();
        this.f24179l = c2Var;
        h();
    }

    public void x(long j10) {
        this.f24182o = j10;
    }

    public long y(long j10) {
        return j10 - l();
    }

    public long z(long j10) {
        return j10 + l();
    }
}
