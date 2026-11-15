package g2;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public class j extends a {

    private final int f60636o;

    private final long f60637p;

    private final f f60638q;

    private long f60639r;

    private volatile boolean f60640s;

    private boolean f60641t;

    public j(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i10, Object obj, long j10, long j11, long j12, long j13, long j14, int i11, long j15, f fVar) {
        super(aVar, hVar, rVar, i10, obj, j10, j11, j12, j13, j14);
        this.f60636o = i11;
        this.f60637p = j15;
        this.f60638q = fVar;
    }

    private void k(c cVar) {
        if (y.q(this.f60598d.f9848n)) {
            r rVar = this.f60598d;
            int i10 = rVar.L;
            if ((i10 <= 1 && rVar.M <= 1) || i10 == -1 || rVar.M == -1) {
                return;
            }
            s0 s0VarTrack = cVar.track(0, 4);
            r rVar2 = this.f60598d;
            int i11 = rVar2.M * rVar2.L;
            long j10 = (this.f60602h - this.f60601g) / ((long) i11);
            for (int i12 = 1; i12 < i11; i12++) {
                s0VarTrack.c(new j0(), 0);
                s0VarTrack.b(((long) i12) * j10, 0, 0, 0, null);
            }
        }
    }

    @Override
    public final void cancelLoad() {
        this.f60640s = true;
    }

    @Override
    public long e() {
        return this.f60649j + ((long) this.f60636o);
    }

    @Override
    public boolean f() {
        return this.f60641t;
    }

    @Override
    public final void load() {
        c cVarH = h();
        if (this.f60639r == 0) {
            cVarH.b(this.f60637p);
            f fVar = this.f60638q;
            f.b bVarJ = j(cVarH);
            long j10 = this.f60565k;
            long j11 = j10 == C.TIME_UNSET ? -9223372036854775807L : j10 - this.f60637p;
            long j12 = this.f60566l;
            fVar.e(bVarJ, j11, j12 == C.TIME_UNSET ? -9223372036854775807L : j12 - this.f60637p);
        }
        try {
            w1.h hVarE = this.f60596b.e(this.f60639r);
            w1.l lVar = this.f60603i;
            k2.j jVar = new k2.j(lVar, hVarE.f74103g, lVar.a(hVarE));
            do {
                try {
                    if (this.f60640s) {
                        break;
                    }
                } catch (Throwable th2) {
                    this.f60639r = jVar.getPosition() - this.f60596b.f74103g;
                    throw th2;
                }
            } while (this.f60638q.a(jVar));
            k(cVarH);
            this.f60639r = jVar.getPosition() - this.f60596b.f74103g;
            l();
            w1.g.a(this.f60603i);
            this.f60641t = !this.f60640s;
        } catch (Throwable th3) {
            l();
            w1.g.a(this.f60603i);
            throw th3;
        }
    }

    protected void l() {
    }

    protected f.b j(c cVar) {
        return cVar;
    }
}
