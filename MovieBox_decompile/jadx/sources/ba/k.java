package ba;

import android.util.Log;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

public final class k implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15741a;

    private e0 f15742b;

    private long f15743c = C.TIME_UNSET;

    private long f15744d = 0;

    private int f15745e = -1;

    public k(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15741a = jVar;
    }

    private static long d(long j10, long j11, long j12, int i10) {
        return j10 + p0.N0(j11 - j12, 1000000L, i10);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        int iB;
        com.google.android.exoplayer2.util.a.e(this.f15742b);
        int i11 = this.f15745e;
        if (i11 != -1 && i10 != (iB = com.google.android.exoplayer2.source.rtsp.g.b(i11))) {
            Log.w("RtpPcmReader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iB), Integer.valueOf(i10)));
        }
        long jD = d(this.f15744d, j10, this.f15743c, this.f15741a.f25772b);
        int iA = d0Var.a();
        this.f15742b.c(d0Var, iA);
        this.f15742b.e(jD, 1, iA, 0, null);
        this.f15745e = i10;
    }

    @Override
    public void b(long j10, int i10) {
        this.f15743c = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 1);
        this.f15742b = e0VarTrack;
        e0VarTrack.d(this.f15741a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15743c = j10;
        this.f15744d = j11;
    }
}
