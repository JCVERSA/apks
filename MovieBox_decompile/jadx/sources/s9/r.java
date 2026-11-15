package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class r implements m {

    private i9.e0 f71908b;

    private boolean f71909c;

    private int f71911e;

    private int f71912f;

    private final com.google.android.exoplayer2.util.d0 f71907a = new com.google.android.exoplayer2.util.d0(10);

    private long f71910d = C.TIME_UNSET;

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71908b);
        if (this.f71909c) {
            int iA = d0Var.a();
            int i10 = this.f71912f;
            if (i10 < 10) {
                int iMin = Math.min(iA, 10 - i10);
                System.arraycopy(d0Var.d(), d0Var.e(), this.f71907a.d(), this.f71912f, iMin);
                if (this.f71912f + iMin == 10) {
                    this.f71907a.P(0);
                    if (73 != this.f71907a.D() || 68 != this.f71907a.D() || 51 != this.f71907a.D()) {
                        com.google.android.exoplayer2.util.s.i("Id3Reader", "Discarding invalid ID3 tag");
                        this.f71909c = false;
                        return;
                    } else {
                        this.f71907a.Q(3);
                        this.f71911e = this.f71907a.C() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f71911e - this.f71912f);
            this.f71908b.c(d0Var, iMin2);
            this.f71912f += iMin2;
        }
    }

    @Override
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f71909c = true;
        if (j10 != C.TIME_UNSET) {
            this.f71910d = j10;
        }
        this.f71911e = 0;
        this.f71912f = 0;
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.f71908b = e0VarTrack;
        e0VarTrack.d(new p1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    @Override
    public void packetFinished() {
        int i10;
        com.google.android.exoplayer2.util.a.i(this.f71908b);
        if (this.f71909c && (i10 = this.f71911e) != 0 && this.f71912f == i10) {
            long j10 = this.f71910d;
            if (j10 != C.TIME_UNSET) {
                this.f71908b.e(j10, 1, i10, 0, null);
            }
            this.f71909c = false;
        }
    }

    @Override
    public void seek() {
        this.f71909c = false;
        this.f71910d = C.TIME_UNSET;
    }
}
