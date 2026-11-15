package ba;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import i9.e0;
import i9.n;

final class b implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15674a;

    private final c0 f15675b = new c0();

    private final int f15676c;

    private final int f15677d;

    private final int f15678e;

    private final int f15679f;

    private long f15680g;

    private e0 f15681h;

    private long f15682i;

    public b(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15674a = jVar;
        this.f15676c = jVar.f25772b;
        String str = (String) com.google.android.exoplayer2.util.a.e((String) jVar.f25774d.get("mode"));
        if (com.google.common.base.a.a(str, "AAC-hbr")) {
            this.f15677d = 13;
            this.f15678e = 3;
        } else {
            if (!com.google.common.base.a.a(str, "AAC-lbr")) {
                throw new UnsupportedOperationException("AAC mode not supported");
            }
            this.f15677d = 6;
            this.f15678e = 2;
        }
        this.f15679f = this.f15678e + this.f15677d;
    }

    private static void d(e0 e0Var, long j10, int i10) {
        e0Var.e(j10, 1, i10, 0, null);
    }

    private static long e(long j10, long j11, long j12, int i10) {
        return j10 + p0.N0(j11 - j12, 1000000L, i10);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        com.google.android.exoplayer2.util.a.e(this.f15681h);
        short sZ = d0Var.z();
        int i11 = sZ / this.f15679f;
        long jE = e(this.f15682i, j10, this.f15680g, this.f15676c);
        this.f15675b.m(d0Var);
        if (i11 == 1) {
            int iH = this.f15675b.h(this.f15677d);
            this.f15675b.r(this.f15678e);
            this.f15681h.c(d0Var, d0Var.a());
            if (z10) {
                d(this.f15681h, jE, iH);
                return;
            }
            return;
        }
        d0Var.Q((sZ + 7) / 8);
        for (int i12 = 0; i12 < i11; i12++) {
            int iH2 = this.f15675b.h(this.f15677d);
            this.f15675b.r(this.f15678e);
            this.f15681h.c(d0Var, iH2);
            d(this.f15681h, jE, iH2);
            jE += p0.N0(i11, 1000000L, this.f15676c);
        }
    }

    @Override
    public void b(long j10, int i10) {
        this.f15680g = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 1);
        this.f15681h = e0VarTrack;
        e0VarTrack.d(this.f15674a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15680g = j10;
        this.f15682i = j11;
    }
}
