package x9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;

public final class p extends a {

    private final int f75237o;

    private final p1 f75238p;

    private long f75239q;

    private boolean f75240r;

    public p(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, long j10, long j11, long j12, int i11, p1 p1Var2) {
        super(kVar, nVar, p1Var, i10, obj, j10, j11, C.TIME_UNSET, C.TIME_UNSET, j12);
        this.f75237o = i11;
        this.f75238p = p1Var2;
    }

    @Override
    public boolean f() {
        return this.f75240r;
    }

    @Override
    public void load() {
        c cVarH = h();
        cVarH.b(0L);
        e0 e0VarTrack = cVarH.track(0, this.f75237o);
        e0VarTrack.d(this.f75238p);
        try {
            long jA = this.f75192i.a(this.f75185b.e(this.f75239q));
            if (jA != -1) {
                jA += this.f75239q;
            }
            i9.f fVar = new i9.f(this.f75192i, this.f75239q, jA);
            for (int iB = 0; iB != -1; iB = e0VarTrack.b(fVar, Integer.MAX_VALUE, true)) {
                this.f75239q += (long) iB;
            }
            e0VarTrack.e(this.f75190g, 1, (int) this.f75239q, 0, null);
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
            this.f75240r = true;
        } catch (Throwable th2) {
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
            throw th2;
        }
    }

    @Override
    public void cancelLoad() {
    }
}
