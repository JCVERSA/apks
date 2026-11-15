package ba;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

final class l implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15746a;

    private e0 f15747b;

    private long f15748c = C.TIME_UNSET;

    private int f15749d = -1;

    private int f15750e = -1;

    private long f15751f = C.TIME_UNSET;

    private long f15752g = 0;

    private boolean f15753h = false;

    private boolean f15754i = false;

    private boolean f15755j = false;

    public l(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15746a = jVar;
    }

    private void d() {
        e0 e0Var = (e0) com.google.android.exoplayer2.util.a.e(this.f15747b);
        long j10 = this.f15751f;
        boolean z10 = this.f15754i;
        e0Var.e(j10, z10 ? 1 : 0, this.f15750e, 0, null);
        this.f15750e = 0;
        this.f15751f = C.TIME_UNSET;
        this.f15753h = false;
    }

    private static long e(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    private boolean f(d0 d0Var, int i10) {
        int iD = d0Var.D();
        if ((iD & 16) == 16 && (iD & 7) == 0) {
            if (this.f15753h && this.f15750e > 0) {
                d();
            }
            this.f15753h = true;
        } else {
            if (!this.f15753h) {
                s.i("RtpVP8Reader", "RTP packet is not the start of a new VP8 partition, skipping.");
                return false;
            }
            int iB = com.google.android.exoplayer2.source.rtsp.g.b(this.f15749d);
            if (i10 < iB) {
                s.i("RtpVP8Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i10)));
                return false;
            }
        }
        if ((iD & 128) != 0) {
            int iD2 = d0Var.D();
            if ((iD2 & 128) != 0 && (d0Var.D() & 128) != 0) {
                d0Var.Q(1);
            }
            if ((iD2 & 64) != 0) {
                d0Var.Q(1);
            }
            if ((iD2 & 32) != 0 || (iD2 & 16) != 0) {
                d0Var.Q(1);
            }
        }
        return true;
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f15747b);
        if (f(d0Var, i10)) {
            if (this.f15750e == -1 && this.f15753h) {
                this.f15754i = (d0Var.h() & 1) == 0;
            }
            if (!this.f15755j) {
                int iE = d0Var.e();
                d0Var.P(iE + 6);
                int iV = d0Var.v() & 16383;
                int iV2 = d0Var.v() & 16383;
                d0Var.P(iE);
                p1 p1Var = this.f15746a.f25773c;
                if (iV != p1Var.f24906q || iV2 != p1Var.f24907r) {
                    this.f15747b.d(p1Var.b().j0(iV).Q(iV2).E());
                }
                this.f15755j = true;
            }
            int iA = d0Var.a();
            this.f15747b.c(d0Var, iA);
            int i11 = this.f15750e;
            if (i11 == -1) {
                this.f15750e = iA;
            } else {
                this.f15750e = i11 + iA;
            }
            this.f15751f = e(this.f15752g, j10, this.f15748c);
            if (z10) {
                d();
            }
            this.f15749d = i10;
        }
    }

    @Override
    public void b(long j10, int i10) {
        com.google.android.exoplayer2.util.a.g(this.f15748c == C.TIME_UNSET);
        this.f15748c = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15747b = e0VarTrack;
        e0VarTrack.d(this.f15746a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15748c = j10;
        this.f15750e = -1;
        this.f15752g = j11;
    }
}
