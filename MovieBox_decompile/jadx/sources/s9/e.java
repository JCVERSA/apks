package s9;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Map;

public final class e implements i9.l {

    public static final i9.r f71658d = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return e.e();
        }
    };

    private final f f71659a = new f();

    private final com.google.android.exoplayer2.util.d0 f71660b = new com.google.android.exoplayer2.util.d0(16384);

    private boolean f71661c;

    public static i9.l[] e() {
        return new i9.l[]{new e()};
    }

    @Override
    public void b(i9.n nVar) {
        this.f71659a.d(nVar, new i0.d(0, 1));
        nVar.endTracks();
        nVar.g(new i9.b0.b(C.TIME_UNSET));
    }

    @Override
    public boolean c(i9.m mVar) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(10);
        int i10 = 0;
        while (true) {
            mVar.peekFully(d0Var.d(), 0, 10);
            d0Var.P(0);
            if (d0Var.G() != 4801587) {
                break;
            }
            d0Var.Q(3);
            int iC = d0Var.C();
            i10 += iC + 10;
            mVar.advancePeekPosition(iC);
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            mVar.peekFully(d0Var.d(), 0, 7);
            d0Var.P(0);
            int iJ = d0Var.J();
            if (iJ == 44096 || iJ == 44097) {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iE = com.google.android.exoplayer2.audio.c.e(d0Var.d(), iJ);
                if (iE == -1) {
                    return false;
                }
                mVar.advancePeekPosition(iE - 7);
            } else {
                mVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                mVar.advancePeekPosition(i12);
                i11 = 0;
            }
        }
    }

    @Override
    public int d(i9.m mVar, i9.a0 a0Var) {
        int i10 = mVar.read(this.f71660b.d(), 0, 16384);
        if (i10 == -1) {
            return -1;
        }
        this.f71660b.P(0);
        this.f71660b.O(i10);
        if (!this.f71661c) {
            this.f71659a.c(0L, 4);
            this.f71661c = true;
        }
        this.f71659a.b(this.f71660b);
        return 0;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f71661c = false;
        this.f71659a.seek();
    }

    @Override
    public void release() {
    }
}
