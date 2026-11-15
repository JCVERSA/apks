package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.source.b;
import com.google.android.exoplayer2.source.h;
import com.google.android.exoplayer2.source.i;

public final class wk6 {
    public final h a;
    public final Object b;
    public final h19[] c;
    public boolean d;
    public boolean e;
    public yk6 f;
    public boolean g;
    public final boolean[] h;
    public final ks8[] i;
    public final rva j;
    public final q k;
    public wk6 l;
    public eva m;
    public sva n;
    public long o;

    public wk6(ks8[] ks8VarArr, long j, rva rvaVar, cb cbVar, q qVar, yk6 yk6Var, sva svaVar) {
        this.i = ks8VarArr;
        this.o = j;
        this.j = rvaVar;
        this.k = qVar;
        i.b bVar = yk6Var.a;
        this.b = bVar.a;
        this.f = yk6Var;
        this.m = eva.e;
        this.n = svaVar;
        this.c = new h19[ks8VarArr.length];
        this.h = new boolean[ks8VarArr.length];
        this.a = e(bVar, qVar, cbVar, yk6Var.b, yk6Var.d);
    }

    public static h e(i.b bVar, q qVar, cb cbVar, long j, long j2) {
        h hVarH = qVar.h(bVar, cbVar, j);
        return j2 != C.TIME_UNSET ? new b(hVarH, true, 0L, j2) : hVarH;
    }

    public static void u(q qVar, h hVar) {
        try {
            if (hVar instanceof b) {
                qVar.y(((b) hVar).b);
            } else {
                qVar.y(hVar);
            }
        } catch (RuntimeException e) {
            op5.d("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public void A() {
        h hVar = this.a;
        if (hVar instanceof b) {
            long j = this.f.d;
            if (j == C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((b) hVar).k(0L, j);
        }
    }

    public long a(sva svaVar, long j, boolean z) {
        return b(svaVar, j, z, new boolean[this.i.length]);
    }

    public long b(sva svaVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= svaVar.a) {
                break;
            }
            boolean[] zArr2 = this.h;
            if (z || !svaVar.b(this.n, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        g(this.c);
        f();
        this.n = svaVar;
        h();
        long jA = this.a.a(svaVar.c, this.h, this.c, zArr, j);
        c(this.c);
        this.e = false;
        int i2 = 0;
        while (true) {
            h19[] h19VarArr = this.c;
            if (i2 >= h19VarArr.length) {
                return jA;
            }
            if (h19VarArr[i2] != null) {
                zi.g(svaVar.c(i2));
                if (this.i[i2].getTrackType() != -2) {
                    this.e = true;
                }
            } else {
                zi.g(svaVar.c[i2] == null);
            }
            i2++;
        }
    }

    public final void c(h19[] h19VarArr) {
        int i = 0;
        while (true) {
            ks8[] ks8VarArr = this.i;
            if (i >= ks8VarArr.length) {
                return;
            }
            if (ks8VarArr[i].getTrackType() == -2 && this.n.c(i)) {
                h19VarArr[i] = new u93();
            }
            i++;
        }
    }

    public void d(long j) {
        zi.g(r());
        this.a.continueLoading(y(j));
    }

    public final void f() {
        if (!r()) {
            return;
        }
        int i = 0;
        while (true) {
            sva svaVar = this.n;
            if (i >= svaVar.a) {
                return;
            }
            boolean zC = svaVar.c(i);
            qi3 qi3Var = this.n.c[i];
            if (zC && qi3Var != null) {
                qi3Var.disable();
            }
            i++;
        }
    }

    public final void g(h19[] h19VarArr) {
        int i = 0;
        while (true) {
            ks8[] ks8VarArr = this.i;
            if (i >= ks8VarArr.length) {
                return;
            }
            if (ks8VarArr[i].getTrackType() == -2) {
                h19VarArr[i] = null;
            }
            i++;
        }
    }

    public final void h() {
        if (!r()) {
            return;
        }
        int i = 0;
        while (true) {
            sva svaVar = this.n;
            if (i >= svaVar.a) {
                return;
            }
            boolean zC = svaVar.c(i);
            qi3 qi3Var = this.n.c[i];
            if (zC && qi3Var != null) {
                qi3Var.enable();
            }
            i++;
        }
    }

    public long i() {
        if (!this.d) {
            return this.f.b;
        }
        long bufferedPositionUs = this.e ? this.a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f.e : bufferedPositionUs;
    }

    public wk6 j() {
        return this.l;
    }

    public long k() {
        if (this.d) {
            return this.a.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long l() {
        return this.o;
    }

    public long m() {
        return this.f.b + this.o;
    }

    public eva n() {
        return this.m;
    }

    public sva o() {
        return this.n;
    }

    public void p(float f, a0 a0Var) {
        this.d = true;
        this.m = this.a.getTrackGroups();
        sva svaVarV = v(f, a0Var);
        yk6 yk6Var = this.f;
        long jMax = yk6Var.b;
        long j = yk6Var.e;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a(svaVarV, jMax, false);
        long j2 = this.o;
        yk6 yk6Var2 = this.f;
        this.o = j2 + (yk6Var2.b - jA);
        this.f = yk6Var2.b(jA);
    }

    public boolean q() {
        return this.d && (!this.e || this.a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public final boolean r() {
        return this.l == null;
    }

    public void s(long j) {
        zi.g(r());
        if (this.d) {
            this.a.reevaluateBuffer(y(j));
        }
    }

    public void t() {
        f();
        u(this.k, this.a);
    }

    public sva v(float f, a0 a0Var) {
        sva svaVarG = this.j.g(this.i, n(), this.f.a, a0Var);
        for (qi3 qi3Var : svaVarG.c) {
            if (qi3Var != null) {
                qi3Var.onPlaybackSpeed(f);
            }
        }
        return svaVarG;
    }

    public void w(wk6 wk6Var) {
        if (wk6Var == this.l) {
            return;
        }
        f();
        this.l = wk6Var;
        h();
    }

    public void x(long j) {
        this.o = j;
    }

    public long y(long j) {
        return j - l();
    }

    public long z(long j) {
        return j + l();
    }
}
