package ba;

import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import i9.e0;
import i9.n;
import java.util.List;

final class i implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15734a;

    private e0 f15735b;

    private long f15737d;

    private boolean f15739f;

    private boolean f15740g;

    private long f15736c = -1;

    private int f15738e = -1;

    public i(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15734a = jVar;
    }

    private static long d(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 48000L);
    }

    private static void e(d0 d0Var) {
        int iE = d0Var.e();
        com.google.android.exoplayer2.util.a.b(d0Var.f() > 18, "ID Header has insufficient data");
        com.google.android.exoplayer2.util.a.b(d0Var.A(8).equals("OpusHead"), "ID Header missing");
        com.google.android.exoplayer2.util.a.b(d0Var.D() == 1, "version number must always be 1");
        d0Var.P(iE);
    }

    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f15735b);
        if (!this.f15739f) {
            e(d0Var);
            List listA = c0.a(d0Var.d());
            p1.b bVarB = this.f15734a.f25773c.b();
            bVarB.T(listA);
            this.f15735b.d(bVarB.E());
            this.f15739f = true;
        } else if (this.f15740g) {
            int iB = com.google.android.exoplayer2.source.rtsp.g.b(this.f15738e);
            if (i10 != iB) {
                s.i("RtpOpusReader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iB), Integer.valueOf(i10)));
            }
            int iA = d0Var.a();
            this.f15735b.c(d0Var, iA);
            this.f15735b.e(d(this.f15737d, j10, this.f15736c), 1, iA, 0, null);
        } else {
            com.google.android.exoplayer2.util.a.b(d0Var.f() >= 8, "Comment Header has insufficient data");
            com.google.android.exoplayer2.util.a.b(d0Var.A(8).equals("OpusTags"), "Comment Header should follow ID Header");
            this.f15740g = true;
        }
        this.f15738e = i10;
    }

    @Override
    public void b(long j10, int i10) {
        this.f15736c = j10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 1);
        this.f15735b = e0VarTrack;
        e0VarTrack.d(this.f15734a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15736c = j10;
        this.f15737d = j11;
    }
}
