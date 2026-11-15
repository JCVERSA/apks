package ba;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;
import okhttp3.internal.http2.Settings;
import okio.Utf8;

final class g implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15720c;

    private e0 f15721d;

    private int f15722e;

    private int f15725h;

    private long f15726i;

    private final d0 f15718a = new d0();

    private final d0 f15719b = new d0(x.f26892a);

    private long f15723f = C.TIME_UNSET;

    private int f15724g = -1;

    public g(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15720c = jVar;
    }

    private static int d(int i10) {
        return (i10 == 19 || i10 == 20) ? 1 : 0;
    }

    private void e(d0 d0Var, int i10) throws ParserException {
        if (d0Var.d().length < 3) {
            throw ParserException.createForMalformedManifest("Malformed FU header.", null);
        }
        int i11 = d0Var.d()[1] & 7;
        byte b10 = d0Var.d()[2];
        int i12 = b10 & Utf8.REPLACEMENT_BYTE;
        boolean z10 = (b10 & 128) > 0;
        boolean z11 = (b10 & 64) > 0;
        if (z10) {
            this.f15725h += h();
            d0Var.d()[1] = (byte) ((i12 << 1) & 127);
            d0Var.d()[2] = (byte) i11;
            this.f15718a.M(d0Var.d());
            this.f15718a.P(1);
        } else {
            int i13 = (this.f15724g + 1) % Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            if (i10 != i13) {
                s.i("RtpH265Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(i13), Integer.valueOf(i10)));
                return;
            } else {
                this.f15718a.M(d0Var.d());
                this.f15718a.P(3);
            }
        }
        int iA = this.f15718a.a();
        this.f15721d.c(this.f15718a, iA);
        this.f15725h += iA;
        if (z11) {
            this.f15722e = d(i12);
        }
    }

    private void f(d0 d0Var) {
        int iA = d0Var.a();
        this.f15725h += h();
        this.f15721d.c(d0Var, iA);
        this.f15725h += iA;
        this.f15722e = d((d0Var.d()[0] >> 1) & 63);
    }

    private static long g(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    private int h() {
        this.f15719b.P(0);
        int iA = this.f15719b.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f15721d)).c(this.f15719b, iA);
        return iA;
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) throws ParserException {
        if (d0Var.d().length == 0) {
            throw ParserException.createForMalformedManifest("Empty RTP data packet.", null);
        }
        int i11 = (d0Var.d()[0] >> 1) & 63;
        com.google.android.exoplayer2.util.a.i(this.f15721d);
        if (i11 >= 0 && i11 < 48) {
            f(d0Var);
        } else {
            if (i11 == 48) {
                throw new UnsupportedOperationException("need to implement processAggregationPacket");
            }
            if (i11 != 49) {
                throw ParserException.createForMalformedManifest(String.format("RTP H265 payload type [%d] not supported.", Integer.valueOf(i11)), null);
            }
            e(d0Var, i10);
        }
        if (z10) {
            if (this.f15723f == C.TIME_UNSET) {
                this.f15723f = j10;
            }
            this.f15721d.e(g(this.f15726i, j10, this.f15723f), this.f15722e, this.f15725h, 0, null);
            this.f15725h = 0;
        }
        this.f15724g = i10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15721d = e0VarTrack;
        e0VarTrack.d(this.f15720c.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15723f = j10;
        this.f15725h = 0;
        this.f15726i = j11;
    }

    @Override
    public void b(long j10, int i10) {
    }
}
