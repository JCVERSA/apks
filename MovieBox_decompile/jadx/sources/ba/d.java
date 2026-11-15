package ba;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.e0;
import i9.n;

final class d implements j {

    private static final int[] f15690h = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    private static final int[] f15691i = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    private final com.google.android.exoplayer2.source.rtsp.j f15692a;

    private final boolean f15693b;

    private final int f15694c;

    private e0 f15695d;

    private long f15696e = C.TIME_UNSET;

    private int f15698g = -1;

    private long f15697f = 0;

    public d(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15692a = jVar;
        this.f15693b = MimeTypes.AUDIO_AMR_WB.equals(com.google.android.exoplayer2.util.a.e(jVar.f25773c.f24901l));
        this.f15694c = jVar.f25772b;
    }

    public static int d(int i10, boolean z10) {
        boolean z11 = (i10 >= 0 && i10 <= 8) || i10 == 15;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(z10 ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i10);
        com.google.android.exoplayer2.util.a.b(z11, sb2.toString());
        return z10 ? f15691i[i10] : f15690h[i10];
    }

    private static long e(long j10, long j11, long j12, int i10) {
        return j10 + p0.N0(j11 - j12, 1000000L, i10);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        int iB;
        com.google.android.exoplayer2.util.a.i(this.f15695d);
        int i11 = this.f15698g;
        if (i11 != -1 && i10 != (iB = com.google.android.exoplayer2.source.rtsp.g.b(i11))) {
            s.i("RtpAmrReader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iB), Integer.valueOf(i10)));
        }
        d0Var.Q(1);
        int iD = d((d0Var.h() >> 3) & 15, this.f15693b);
        int iA = d0Var.a();
        com.google.android.exoplayer2.util.a.b(iA == iD, "compound payload not supported currently");
        this.f15695d.c(d0Var, iA);
        this.f15695d.e(e(this.f15697f, j10, this.f15696e, this.f15694c), 1, iA, 0, null);
        this.f15698g = i10;
    }

    @Override
    public void b(long j10, int i10) {
        this.f15696e = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 1);
        this.f15695d = e0VarTrack;
        e0VarTrack.d(this.f15692a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15696e = j10;
        this.f15697f = j11;
    }
}
