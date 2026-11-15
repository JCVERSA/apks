package ba;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

final class m implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15756a;

    private e0 f15757b;

    private int f15761f;

    private long f15758c = C.TIME_UNSET;

    private long f15759d = 0;

    private int f15760e = -1;

    private int f15762g = -1;

    private int f15763h = -1;

    private boolean f15764i = false;

    private boolean f15765j = false;

    public m(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15756a = jVar;
    }

    private static long d(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    private boolean e(d0 d0Var, int i10) {
        int iD = d0Var.D();
        if (this.f15764i) {
            int iB = com.google.android.exoplayer2.source.rtsp.g.b(this.f15760e);
            if (i10 != iB) {
                s.i("RtpVp9Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i10)));
                return false;
            }
        } else {
            if ((iD & 8) == 0) {
                s.i("RtpVp9Reader", "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet.");
                return false;
            }
            this.f15764i = true;
        }
        if ((iD & 128) != 0 && (d0Var.D() & 128) != 0 && d0Var.a() < 1) {
            return false;
        }
        int i11 = iD & 16;
        com.google.android.exoplayer2.util.a.b(i11 == 0, "VP9 flexible mode is not supported.");
        if ((iD & 32) != 0) {
            d0Var.Q(1);
            if (d0Var.a() < 1) {
                return false;
            }
            if (i11 == 0) {
                d0Var.Q(1);
            }
        }
        if ((iD & 2) != 0) {
            int iD2 = d0Var.D();
            int i12 = (iD2 >> 5) & 7;
            if ((iD2 & 16) != 0) {
                int i13 = i12 + 1;
                if (d0Var.a() < i13 * 4) {
                    return false;
                }
                for (int i14 = 0; i14 < i13; i14++) {
                    this.f15762g = d0Var.J();
                    this.f15763h = d0Var.J();
                }
            }
            if ((iD2 & 8) != 0) {
                int iD3 = d0Var.D();
                if (d0Var.a() < iD3) {
                    return false;
                }
                for (int i15 = 0; i15 < iD3; i15++) {
                    int iJ = (d0Var.J() & 12) >> 2;
                    if (d0Var.a() < iJ) {
                        return false;
                    }
                    d0Var.Q(iJ);
                }
            }
        }
        return true;
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        int i11;
        int i12;
        com.google.android.exoplayer2.util.a.i(this.f15757b);
        if (e(d0Var, i10)) {
            int i13 = (this.f15761f == 0 && this.f15764i && (d0Var.h() & 4) == 0) ? 1 : 0;
            if (!this.f15765j && (i11 = this.f15762g) != -1 && (i12 = this.f15763h) != -1) {
                p1 p1Var = this.f15756a.f25773c;
                if (i11 != p1Var.f24906q || i12 != p1Var.f24907r) {
                    this.f15757b.d(p1Var.b().j0(this.f15762g).Q(this.f15763h).E());
                }
                this.f15765j = true;
            }
            int iA = d0Var.a();
            this.f15757b.c(d0Var, iA);
            this.f15761f += iA;
            if (z10) {
                if (this.f15758c == C.TIME_UNSET) {
                    this.f15758c = j10;
                }
                this.f15757b.e(d(this.f15759d, j10, this.f15758c), i13, this.f15761f, 0, null);
                this.f15761f = 0;
                this.f15764i = false;
            }
            this.f15760e = i10;
        }
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15757b = e0VarTrack;
        e0VarTrack.d(this.f15756a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15758c = j10;
        this.f15761f = 0;
        this.f15759d = j11;
    }

    @Override
    public void b(long j10, int i10) {
    }
}
