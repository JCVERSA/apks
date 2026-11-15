package ba;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

final class h implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15727a;

    private e0 f15728b;

    private int f15729c;

    private long f15732f;

    private long f15730d = C.TIME_UNSET;

    private int f15731e = -1;

    private int f15733g = 0;

    public h(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15727a = jVar;
    }

    private static int d(d0 d0Var) {
        int iA = com.google.common.primitives.a.a(d0Var.d(), new byte[]{0, 0, 1, -74});
        if (iA == -1) {
            return 0;
        }
        d0Var.P(iA + 4);
        return (d0Var.h() >> 6) == 0 ? 1 : 0;
    }

    private static long e(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        int iB;
        com.google.android.exoplayer2.util.a.i(this.f15728b);
        int i11 = this.f15731e;
        if (i11 != -1 && i10 != (iB = com.google.android.exoplayer2.source.rtsp.g.b(i11))) {
            s.i("RtpMpeg4Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i10)));
        }
        int iA = d0Var.a();
        this.f15728b.c(d0Var, iA);
        if (this.f15733g == 0) {
            this.f15729c = d(d0Var);
        }
        this.f15733g += iA;
        if (z10) {
            if (this.f15730d == C.TIME_UNSET) {
                this.f15730d = j10;
            }
            this.f15728b.e(e(this.f15732f, j10, this.f15730d), this.f15729c, this.f15733g, 0, null);
            this.f15733g = 0;
        }
        this.f15731e = i10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15728b = e0VarTrack;
        ((e0) p0.j(e0VarTrack)).d(this.f15727a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15730d = j10;
        this.f15732f = j11;
        this.f15733g = 0;
    }

    @Override
    public void b(long j10, int i10) {
    }
}
