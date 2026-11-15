package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

public final class l extends androidx.media3.exoplayer.source.a {

    private final long f12539h;

    private androidx.media3.common.t f12540i;

    @Override
    public synchronized androidx.media3.common.t a() {
        return this.f12540i;
    }

    @Override
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        androidx.media3.common.t tVarA = a();
        androidx.media3.common.util.a.e(tVarA.f9899b);
        androidx.media3.common.util.a.f(tVarA.f9899b.f9992b, "Externally loaded mediaItems require a MIME type.");
        androidx.media3.common.t.h hVar = tVarA.f9899b;
        return new k(hVar.f9991a, hVar.f9992b, null);
    }

    @Override
    public void k(q qVar) {
        ((k) qVar).i();
    }

    @Override
    public synchronized void n(androidx.media3.common.t tVar) {
        this.f12540i = tVar;
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVar = tVar.f9899b;
        androidx.media3.common.t.h hVar2 = (androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f9899b);
        if (hVar != null && hVar.f9991a.equals(hVar2.f9991a) && Objects.equals(hVar.f9992b, hVar2.f9992b)) {
            long j10 = hVar.f9999i;
            if (j10 == C.TIME_UNSET || a1.R0(j10) == this.f12539h) {
                return true;
            }
        }
        return false;
    }

    @Override
    protected void z(w1.n nVar) {
        A(new f2.w(this.f12539h, true, false, false, null, a()));
    }

    private l(androidx.media3.common.t tVar, long j10, j jVar) {
        this.f12540i = tVar;
        this.f12539h = j10;
    }

    @Override
    protected void B() {
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    public static final class b implements r.a {

        private final long f12541a;

        public b(long j10, j jVar) {
            this.f12541a = j10;
        }

        @Override
        public r.a a(h3.s.a aVar) {
            return f2.l.c(this, aVar);
        }

        @Override
        public r.a b(int i10) {
            return f2.l.b(this, i10);
        }

        @Override
        public r.a c(boolean z10) {
            return f2.l.a(this, z10);
        }

        @Override
        public l d(androidx.media3.common.t tVar) {
            return new l(tVar, this.f12541a, null);
        }

        @Override
        public r.a e(androidx.media3.exoplayer.drm.w wVar) {
            return this;
        }

        @Override
        public r.a f(androidx.media3.exoplayer.upstream.m mVar) {
            return this;
        }
    }
}
