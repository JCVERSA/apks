package ba;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

final class f implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15711c;

    private e0 f15712d;

    private int f15713e;

    private int f15716h;

    private long f15717i;

    private final d0 f15710b = new d0(x.f26892a);

    private final d0 f15709a = new d0();

    private long f15714f = C.TIME_UNSET;

    private int f15715g = -1;

    public f(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15711c = jVar;
    }

    private static int d(int i10) {
        return i10 == 5 ? 1 : 0;
    }

    private void e(d0 d0Var, int i10) {
        byte b10 = d0Var.d()[0];
        byte b11 = d0Var.d()[1];
        int i11 = (b10 & 224) | (b11 & 31);
        boolean z10 = (b11 & 128) > 0;
        boolean z11 = (b11 & 64) > 0;
        if (z10) {
            this.f15716h += i();
            d0Var.d()[1] = (byte) i11;
            this.f15709a.M(d0Var.d());
            this.f15709a.P(1);
        } else {
            int iB = com.google.android.exoplayer2.source.rtsp.g.b(this.f15715g);
            if (i10 != iB) {
                s.i("RtpH264Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i10)));
                return;
            } else {
                this.f15709a.M(d0Var.d());
                this.f15709a.P(2);
            }
        }
        int iA = this.f15709a.a();
        this.f15712d.c(this.f15709a, iA);
        this.f15716h += iA;
        if (z11) {
            this.f15713e = d(i11 & 31);
        }
    }

    private void f(d0 d0Var) {
        int iA = d0Var.a();
        this.f15716h += i();
        this.f15712d.c(d0Var, iA);
        this.f15716h += iA;
        this.f15713e = d(d0Var.d()[0] & 31);
    }

    private void g(d0 d0Var) {
        d0Var.D();
        while (d0Var.a() > 4) {
            int iJ = d0Var.J();
            this.f15716h += i();
            this.f15712d.c(d0Var, iJ);
            this.f15716h += iJ;
        }
        this.f15713e = 0;
    }

    private static long h(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    private int i() {
        this.f15710b.P(0);
        int iA = this.f15710b.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f15712d)).c(this.f15710b, iA);
        return iA;
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) throws ParserException {
        try {
            int i11 = d0Var.d()[0] & 31;
            com.google.android.exoplayer2.util.a.i(this.f15712d);
            if (i11 > 0 && i11 < 24) {
                f(d0Var);
            } else if (i11 == 24) {
                g(d0Var);
            } else {
                if (i11 != 28) {
                    throw ParserException.createForMalformedManifest(String.format("RTP H264 packetization mode [%d] not supported.", Integer.valueOf(i11)), null);
                }
                e(d0Var, i10);
            }
            if (z10) {
                if (this.f15714f == C.TIME_UNSET) {
                    this.f15714f = j10;
                }
                this.f15712d.e(h(this.f15717i, j10, this.f15714f), this.f15713e, this.f15716h, 0, null);
                this.f15716h = 0;
            }
            this.f15715g = i10;
        } catch (IndexOutOfBoundsException e10) {
            throw ParserException.createForMalformedManifest(null, e10);
        }
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15712d = e0VarTrack;
        ((e0) p0.j(e0VarTrack)).d(this.f15711c.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15714f = j10;
        this.f15716h = 0;
        this.f15717i = j11;
    }

    @Override
    public void b(long j10, int i10) {
    }
}
