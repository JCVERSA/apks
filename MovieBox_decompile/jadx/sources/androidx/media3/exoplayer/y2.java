package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

final class y2 {

    public final androidx.media3.exoplayer.source.q f13056a;

    public final Object f13057b;

    public final f2.u[] f13058c;

    public final long f13059d;

    public boolean f13060e;

    public boolean f13061f;

    public boolean f13062g;

    public z2 f13063h;

    public boolean f13064i;

    private final boolean[] f13065j;

    private final y3[] f13066k;

    private final i2.e0 f13067l;

    private final q3 f13068m;

    private y2 f13069n;

    private f2.z f13070o;

    private i2.f0 f13071p;

    private long f13072q;

    interface a {
        y2 a(z2 z2Var, long j10);
    }

    public y2(y3[] y3VarArr, long j10, i2.e0 e0Var, androidx.media3.exoplayer.upstream.b bVar, q3 q3Var, z2 z2Var, i2.f0 f0Var, long j11) {
        this.f13066k = y3VarArr;
        this.f13072q = j10;
        this.f13067l = e0Var;
        this.f13068m = q3Var;
        androidx.media3.exoplayer.source.r.b bVar2 = z2Var.f13076a;
        this.f13057b = bVar2.f12571a;
        this.f13063h = z2Var;
        this.f13059d = j11;
        this.f13070o = f2.z.f59966d;
        this.f13071p = f0Var;
        this.f13058c = new f2.u[y3VarArr.length];
        this.f13065j = new boolean[y3VarArr.length];
        this.f13056a = f(bVar2, q3Var, bVar, z2Var.f13077b, z2Var.f13079d, z2Var.f13081f);
    }

    private void c(f2.u[] uVarArr) {
        int i10 = 0;
        while (true) {
            y3[] y3VarArr = this.f13066k;
            if (i10 >= y3VarArr.length) {
                return;
            }
            if (y3VarArr[i10].getTrackType() == -2 && this.f13071p.c(i10)) {
                uVarArr[i10] = new f2.h();
            }
            i10++;
        }
    }

    private static androidx.media3.exoplayer.source.q f(androidx.media3.exoplayer.source.r.b bVar, q3 q3Var, androidx.media3.exoplayer.upstream.b bVar2, long j10, long j11, boolean z10) {
        androidx.media3.exoplayer.source.q qVarH = q3Var.h(bVar, bVar2, j10);
        return j11 != C.TIME_UNSET ? new androidx.media3.exoplayer.source.b(qVarH, !z10, 0L, j11) : qVarH;
    }

    private void g() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            i2.f0 f0Var = this.f13071p;
            if (i10 >= f0Var.f61644a) {
                return;
            }
            boolean zC = f0Var.c(i10);
            i2.z zVar = this.f13071p.f61646c[i10];
            if (zC && zVar != null) {
                zVar.disable();
            }
            i10++;
        }
    }

    private void h(f2.u[] uVarArr) {
        int i10 = 0;
        while (true) {
            y3[] y3VarArr = this.f13066k;
            if (i10 >= y3VarArr.length) {
                return;
            }
            if (y3VarArr[i10].getTrackType() == -2) {
                uVarArr[i10] = null;
            }
            i10++;
        }
    }

    private void i() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            i2.f0 f0Var = this.f13071p;
            if (i10 >= f0Var.f61644a) {
                return;
            }
            boolean zC = f0Var.c(i10);
            i2.z zVar = this.f13071p.f61646c[i10];
            if (zC && zVar != null) {
                zVar.enable();
            }
            i10++;
        }
    }

    private boolean u() {
        return this.f13069n == null;
    }

    private static void y(q3 q3Var, androidx.media3.exoplayer.source.q qVar) {
        try {
            if (qVar instanceof androidx.media3.exoplayer.source.b) {
                q3Var.z(((androidx.media3.exoplayer.source.b) qVar).f12370a);
            } else {
                q3Var.z(qVar);
            }
        } catch (RuntimeException e10) {
            androidx.media3.common.util.u.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A(y2 y2Var) {
        if (y2Var == this.f13069n) {
            return;
        }
        g();
        this.f13069n = y2Var;
        i();
    }

    public void B(long j10) {
        this.f13072q = j10;
    }

    public long C(long j10) {
        return j10 - m();
    }

    public long D(long j10) {
        return j10 + m();
    }

    public void E() {
        androidx.media3.exoplayer.source.q qVar = this.f13056a;
        if (qVar instanceof androidx.media3.exoplayer.source.b) {
            long j10 = this.f13063h.f13079d;
            if (j10 == C.TIME_UNSET) {
                j10 = Long.MIN_VALUE;
            }
            ((androidx.media3.exoplayer.source.b) qVar).n(0L, j10);
        }
    }

    public long a(i2.f0 f0Var, long j10, boolean z10) {
        return b(f0Var, j10, z10, new boolean[this.f13066k.length]);
    }

    public long b(i2.f0 f0Var, long j10, boolean z10, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= f0Var.f61644a) {
                break;
            }
            boolean[] zArr2 = this.f13065j;
            if (z10 || !f0Var.b(this.f13071p, i10)) {
                z11 = false;
            }
            zArr2[i10] = z11;
            i10++;
        }
        h(this.f13058c);
        g();
        this.f13071p = f0Var;
        i();
        long jE = this.f13056a.e(f0Var.f61646c, this.f13065j, this.f13058c, zArr, j10);
        c(this.f13058c);
        this.f13062g = false;
        int i11 = 0;
        while (true) {
            f2.u[] uVarArr = this.f13058c;
            if (i11 >= uVarArr.length) {
                return jE;
            }
            if (uVarArr[i11] != null) {
                androidx.media3.common.util.a.g(f0Var.c(i11));
                if (this.f13066k[i11].getTrackType() != -2) {
                    this.f13062g = true;
                }
            } else {
                androidx.media3.common.util.a.g(f0Var.f61646c[i11] == null);
            }
            i11++;
        }
    }

    public boolean d(z2 z2Var) {
        if (b3.e(this.f13063h.f13080e, z2Var.f13080e)) {
            z2 z2Var2 = this.f13063h;
            if (z2Var2.f13077b == z2Var.f13077b && z2Var2.f13076a.equals(z2Var.f13076a)) {
                return true;
            }
        }
        return false;
    }

    public void e(v2 v2Var) {
        androidx.media3.common.util.a.g(u());
        this.f13056a.a(v2Var);
    }

    public long j() {
        if (!this.f13061f) {
            return this.f13063h.f13077b;
        }
        long bufferedPositionUs = this.f13062g ? this.f13056a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f13063h.f13080e : bufferedPositionUs;
    }

    public y2 k() {
        return this.f13069n;
    }

    public long l() {
        if (this.f13061f) {
            return this.f13056a.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long m() {
        return this.f13072q;
    }

    public long n() {
        return this.f13063h.f13077b + this.f13072q;
    }

    public f2.z o() {
        return this.f13070o;
    }

    public i2.f0 p() {
        return this.f13071p;
    }

    public void q(float f10, androidx.media3.common.e0 e0Var, boolean z10) {
        this.f13061f = true;
        this.f13070o = this.f13056a.getTrackGroups();
        i2.f0 f0VarZ = z(f10, e0Var, z10);
        z2 z2Var = this.f13063h;
        long jMax = z2Var.f13077b;
        long j10 = z2Var.f13080e;
        if (j10 != C.TIME_UNSET && jMax >= j10) {
            jMax = Math.max(0L, j10 - 1);
        }
        long jA = a(f0VarZ, jMax, false);
        long j11 = this.f13072q;
        z2 z2Var2 = this.f13063h;
        this.f13072q = j11 + (z2Var2.f13077b - jA);
        this.f13063h = z2Var2.b(jA);
    }

    public boolean r() {
        try {
            if (this.f13061f) {
                for (f2.u uVar : this.f13058c) {
                    if (uVar != null) {
                        uVar.maybeThrowError();
                    }
                }
            } else {
                this.f13056a.maybeThrowPrepareError();
            }
            return false;
        } catch (IOException unused) {
            return true;
        }
    }

    public boolean s() {
        return this.f13061f && (!this.f13062g || this.f13056a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public boolean t() {
        return this.f13061f && (s() || j() - this.f13063h.f13077b >= this.f13059d);
    }

    public void v(androidx.media3.exoplayer.source.q.a aVar, long j10) {
        this.f13060e = true;
        this.f13056a.f(aVar, j10);
    }

    public void w(long j10) {
        androidx.media3.common.util.a.g(u());
        if (this.f13061f) {
            this.f13056a.reevaluateBuffer(C(j10));
        }
    }

    public void x() {
        g();
        y(this.f13068m, this.f13056a);
    }

    public i2.f0 z(float f10, androidx.media3.common.e0 e0Var, boolean z10) {
        i2.f0 f0VarK = this.f13067l.k(this.f13066k, o(), this.f13063h.f13076a, e0Var);
        for (int i10 = 0; i10 < f0VarK.f61644a; i10++) {
            boolean z11 = true;
            if (f0VarK.c(i10)) {
                if (f0VarK.f61646c[i10] == null && this.f13066k[i10].getTrackType() != -2) {
                    z11 = false;
                }
                androidx.media3.common.util.a.g(z11);
            } else {
                androidx.media3.common.util.a.g(f0VarK.f61646c[i10] == null);
            }
        }
        for (i2.z zVar : f0VarK.f61646c) {
            if (zVar != null) {
                zVar.onPlaybackSpeed(f10);
                zVar.b(z10);
            }
        }
        return f0VarK;
    }
}
