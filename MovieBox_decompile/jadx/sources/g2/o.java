package g2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class o extends a {

    private final int f60651o;

    private final r f60652p;

    private long f60653q;

    private boolean f60654r;

    public o(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i10, Object obj, long j10, long j11, long j12, int i11, r rVar2) {
        super(aVar, hVar, rVar, i10, obj, j10, j11, C.TIME_UNSET, C.TIME_UNSET, j12);
        this.f60651o = i11;
        this.f60652p = rVar2;
    }

    @Override
    public boolean f() {
        return this.f60654r;
    }

    @Override
    public void load() {
        c cVarH = h();
        cVarH.b(0L);
        s0 s0VarTrack = cVarH.track(0, this.f60651o);
        s0VarTrack.d(this.f60652p);
        try {
            long jA = this.f60603i.a(this.f60596b.e(this.f60653q));
            if (jA != -1) {
                jA += this.f60653q;
            }
            k2.j jVar = new k2.j(this.f60603i, this.f60653q, jA);
            for (int iE = 0; iE != -1; iE = s0VarTrack.e(jVar, Integer.MAX_VALUE, true)) {
                this.f60653q += (long) iE;
            }
            s0VarTrack.b(this.f60601g, 1, (int) this.f60653q, 0, null);
            w1.g.a(this.f60603i);
            this.f60654r = true;
        } catch (Throwable th2) {
            w1.g.a(this.f60603i);
            throw th2;
        }
    }

    @Override
    public void cancelLoad() {
    }
}
