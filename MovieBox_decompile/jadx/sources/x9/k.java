package x9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.i0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public class k extends a {

    private final int f75223o;

    private final long f75224p;

    private final g f75225q;

    private long f75226r;

    private volatile boolean f75227s;

    private boolean f75228t;

    public k(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14, int i11, long j15, g gVar) {
        super(kVar, nVar, p1Var, i10, obj, j10, j11, j12, j13, j14);
        this.f75223o = i11;
        this.f75224p = j15;
        this.f75225q = gVar;
    }

    @Override
    public final void cancelLoad() {
        this.f75227s = true;
    }

    @Override
    public long e() {
        return this.f75235j + ((long) this.f75223o);
    }

    @Override
    public boolean f() {
        return this.f75228t;
    }

    @Override
    public final void load() {
        if (this.f75226r == 0) {
            c cVarH = h();
            cVarH.b(this.f75224p);
            g gVar = this.f75225q;
            g.b bVarJ = j(cVarH);
            long j10 = this.f75157k;
            long j11 = j10 == C.TIME_UNSET ? -9223372036854775807L : j10 - this.f75224p;
            long j12 = this.f75158l;
            gVar.d(bVarJ, j11, j12 == C.TIME_UNSET ? -9223372036854775807L : j12 - this.f75224p);
        }
        try {
            com.google.android.exoplayer2.upstream.n nVarE = this.f75185b.e(this.f75226r);
            i0 i0Var = this.f75192i;
            i9.f fVar = new i9.f(i0Var, nVarE.f26671g, i0Var.a(nVarE));
            do {
                try {
                    if (this.f75227s) {
                        break;
                    }
                } catch (Throwable th2) {
                    this.f75226r = fVar.getPosition() - this.f75185b.f26671g;
                    throw th2;
                }
            } while (this.f75225q.a(fVar));
            this.f75226r = fVar.getPosition() - this.f75185b.f26671g;
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
            this.f75228t = !this.f75227s;
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
            throw th3;
        }
    }

    protected g.b j(c cVar) {
        return cVar;
    }
}
