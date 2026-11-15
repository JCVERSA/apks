package s9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.util.Map;

public final class h implements i9.l {

    public static final i9.r f71688m = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return h.h();
        }
    };

    private final int f71689a;

    private final i f71690b;

    private final com.google.android.exoplayer2.util.d0 f71691c;

    private final com.google.android.exoplayer2.util.d0 f71692d;

    private final com.google.android.exoplayer2.util.c0 f71693e;

    private i9.n f71694f;

    private long f71695g;

    private long f71696h;

    private int f71697i;

    private boolean f71698j;

    private boolean f71699k;

    private boolean f71700l;

    public h() {
        this(0);
    }

    private void e(i9.m mVar) throws ParserException {
        if (this.f71698j) {
            return;
        }
        this.f71697i = -1;
        mVar.resetPeekPosition();
        long j10 = 0;
        if (mVar.getPosition() == 0) {
            j(mVar);
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                if (mVar.peekFully(this.f71692d.d(), 0, 2, true)) {
                    this.f71692d.P(0);
                    if (!i.k(this.f71692d.J())) {
                        break;
                    }
                    if (mVar.peekFully(this.f71692d.d(), 0, 4, true)) {
                        this.f71693e.p(14);
                        int iH = this.f71693e.h(13);
                        if (iH <= 6) {
                            this.f71698j = true;
                            throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                        }
                        j10 += (long) iH;
                        i11++;
                        if (i11 != 1000 && mVar.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i10 = i11;
            break;
        }
        mVar.resetPeekPosition();
        if (i10 > 0) {
            this.f71697i = (int) (j10 / ((long) i10));
        } else {
            this.f71697i = -1;
        }
        this.f71698j = true;
    }

    private static int f(int i10, long j10) {
        return (int) ((((long) i10) * 8000000) / j10);
    }

    private i9.b0 g(long j10, boolean z10) {
        return new i9.e(j10, this.f71696h, f(this.f71697i, this.f71690b.i()), this.f71697i, z10);
    }

    public static i9.l[] h() {
        return new i9.l[]{new h()};
    }

    private void i(long j10, boolean z10) {
        if (this.f71700l) {
            return;
        }
        boolean z11 = (this.f71689a & 1) != 0 && this.f71697i > 0;
        if (z11 && this.f71690b.i() == C.TIME_UNSET && !z10) {
            return;
        }
        if (!z11 || this.f71690b.i() == C.TIME_UNSET) {
            this.f71694f.g(new i9.b0.b(C.TIME_UNSET));
        } else {
            this.f71694f.g(g(j10, (this.f71689a & 2) != 0));
        }
        this.f71700l = true;
    }

    private int j(i9.m mVar) {
        int i10 = 0;
        while (true) {
            mVar.peekFully(this.f71692d.d(), 0, 10);
            this.f71692d.P(0);
            if (this.f71692d.G() != 4801587) {
                break;
            }
            this.f71692d.Q(3);
            int iC = this.f71692d.C();
            i10 += iC + 10;
            mVar.advancePeekPosition(iC);
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        if (this.f71696h == -1) {
            this.f71696h = i10;
        }
        return i10;
    }

    @Override
    public void b(i9.n nVar) {
        this.f71694f = nVar;
        this.f71690b.d(nVar, new i0.d(0, 1));
        nVar.endTracks();
    }

    @Override
    public boolean c(i9.m mVar) {
        int iJ = j(mVar);
        int i10 = iJ;
        int i11 = 0;
        int i12 = 0;
        do {
            mVar.peekFully(this.f71692d.d(), 0, 2);
            this.f71692d.P(0);
            if (i.k(this.f71692d.J())) {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                mVar.peekFully(this.f71692d.d(), 0, 4);
                this.f71693e.p(14);
                int iH = this.f71693e.h(13);
                if (iH <= 6) {
                    i10++;
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(i10);
                } else {
                    mVar.advancePeekPosition(iH - 6);
                    i12 += iH;
                }
            } else {
                i10++;
                mVar.resetPeekPosition();
                mVar.advancePeekPosition(i10);
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iJ < 8192);
        return false;
    }

    @Override
    public int d(i9.m mVar, i9.a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f71694f);
        long length = mVar.getLength();
        int i10 = this.f71689a;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            e(mVar);
        }
        int i11 = mVar.read(this.f71691c.d(), 0, 2048);
        boolean z10 = i11 == -1;
        i(length, z10);
        if (z10) {
            return -1;
        }
        this.f71691c.P(0);
        this.f71691c.O(i11);
        if (!this.f71699k) {
            this.f71690b.c(this.f71695g, 4);
            this.f71699k = true;
        }
        this.f71690b.b(this.f71691c);
        return 0;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f71699k = false;
        this.f71690b.seek();
        this.f71695g = j11;
    }

    public h(int i10) {
        this.f71689a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f71690b = new i(true);
        this.f71691c = new com.google.android.exoplayer2.util.d0(2048);
        this.f71697i = -1;
        this.f71696h = -1L;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(10);
        this.f71692d = d0Var;
        this.f71693e = new com.google.android.exoplayer2.util.c0(d0Var.d());
    }

    @Override
    public void release() {
    }
}
