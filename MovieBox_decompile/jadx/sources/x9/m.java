package x9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.i0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class m extends f {

    private final g f75231j;

    private g.b f75232k;

    private long f75233l;

    private volatile boolean f75234m;

    public m(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, g gVar) {
        super(kVar, nVar, 2, p1Var, i10, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f75231j = gVar;
    }

    @Override
    public void cancelLoad() {
        this.f75234m = true;
    }

    public void e(g.b bVar) {
        this.f75232k = bVar;
    }

    @Override
    public void load() {
        if (this.f75233l == 0) {
            this.f75231j.d(this.f75232k, C.TIME_UNSET, C.TIME_UNSET);
        }
        try {
            com.google.android.exoplayer2.upstream.n nVarE = this.f75185b.e(this.f75233l);
            i0 i0Var = this.f75192i;
            i9.f fVar = new i9.f(i0Var, nVarE.f26671g, i0Var.a(nVarE));
            while (!this.f75234m && this.f75231j.a(fVar)) {
                try {
                } catch (Throwable th2) {
                    this.f75233l = fVar.getPosition() - this.f75185b.f26671g;
                    throw th2;
                }
            }
            this.f75233l = fVar.getPosition() - this.f75185b.f26671g;
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
            throw th3;
        }
    }
}
