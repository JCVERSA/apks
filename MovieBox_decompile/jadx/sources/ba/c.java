package ba;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

public final class c implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15683a;

    private e0 f15685c;

    private int f15686d;

    private long f15688f;

    private long f15689g;

    private final c0 f15684b = new c0();

    private long f15687e = C.TIME_UNSET;

    public c(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15683a = jVar;
    }

    private void d() {
        if (this.f15686d > 0) {
            e();
        }
    }

    private void e() {
        ((e0) p0.j(this.f15685c)).e(this.f15688f, 1, this.f15686d, 0, null);
        this.f15686d = 0;
    }

    private void f(d0 d0Var, boolean z10, int i10, long j10) {
        int iA = d0Var.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f15685c)).c(d0Var, iA);
        this.f15686d += iA;
        this.f15688f = j10;
        if (z10 && i10 == 3) {
            e();
        }
    }

    private void g(d0 d0Var, int i10, long j10) {
        this.f15684b.n(d0Var.d());
        this.f15684b.s(2);
        for (int i11 = 0; i11 < i10; i11++) {
            com.google.android.exoplayer2.audio.b.C0341b c0341bE = com.google.android.exoplayer2.audio.b.e(this.f15684b);
            ((e0) com.google.android.exoplayer2.util.a.e(this.f15685c)).c(d0Var, c0341bE.f23920e);
            ((e0) p0.j(this.f15685c)).e(j10, 1, c0341bE.f23920e, 0, null);
            j10 += ((long) (c0341bE.f23921f / c0341bE.f23918c)) * 1000000;
            this.f15684b.s(c0341bE.f23920e);
        }
    }

    private void h(d0 d0Var, long j10) {
        int iA = d0Var.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f15685c)).c(d0Var, iA);
        ((e0) p0.j(this.f15685c)).e(j10, 1, iA, 0, null);
    }

    private static long i(long j10, long j11, long j12, int i10) {
        return j10 + p0.N0(j11 - j12, 1000000L, i10);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        int iD = d0Var.D() & 3;
        int iD2 = d0Var.D() & 255;
        long jI = i(this.f15689g, j10, this.f15687e, this.f15683a.f25772b);
        if (iD == 0) {
            d();
            if (iD2 == 1) {
                h(d0Var, jI);
                return;
            } else {
                g(d0Var, iD2, jI);
                return;
            }
        }
        if (iD == 1 || iD == 2) {
            d();
        } else if (iD != 3) {
            throw new IllegalArgumentException(String.valueOf(iD));
        }
        f(d0Var, z10, iD, jI);
    }

    @Override
    public void b(long j10, int i10) {
        com.google.android.exoplayer2.util.a.g(this.f15687e == C.TIME_UNSET);
        this.f15687e = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 1);
        this.f15685c = e0VarTrack;
        e0VarTrack.d(this.f15683a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15687e = j10;
        this.f15689g = j11;
    }
}
