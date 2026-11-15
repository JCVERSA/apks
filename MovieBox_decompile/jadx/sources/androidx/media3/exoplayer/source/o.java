package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

public final class o implements q, q.a {

    public final r.b f12550a;

    private final long f12551b;

    private final androidx.media3.exoplayer.upstream.b f12552c;

    private r f12553d;

    private q f12554e;

    private q.a f12555f;

    private a f12556g;

    private boolean f12557h;

    private long f12558i = C.TIME_UNSET;

    public interface a {
        void a(r.b bVar, IOException iOException);

        void b(r.b bVar);
    }

    public o(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        this.f12550a = bVar;
        this.f12552c = bVar2;
        this.f12551b = j10;
    }

    private long k(long j10) {
        long j11 = this.f12558i;
        return j11 != C.TIME_UNSET ? j11 : j10;
    }

    @Override
    public boolean a(v2 v2Var) {
        q qVar = this.f12554e;
        return qVar != null && qVar.a(v2Var);
    }

    @Override
    public long b(long j10, c4 c4Var) {
        return ((q) a1.i(this.f12554e)).b(j10, c4Var);
    }

    public void c(r.b bVar) {
        long jK = k(this.f12551b);
        q qVarG = ((r) androidx.media3.common.util.a.e(this.f12553d)).g(bVar, this.f12552c, jK);
        this.f12554e = qVarG;
        if (this.f12555f != null) {
            qVarG.f(this, jK);
        }
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        ((q) a1.i(this.f12554e)).discardBuffer(j10, z10);
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        long j11 = this.f12558i;
        long j12 = (j11 == C.TIME_UNSET || j10 != this.f12551b) ? j10 : j11;
        this.f12558i = C.TIME_UNSET;
        return ((q) a1.i(this.f12554e)).e(zVarArr, zArr, uVarArr, zArr2, j12);
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f12555f = aVar;
        q qVar = this.f12554e;
        if (qVar != null) {
            qVar.f(this, k(this.f12551b));
        }
    }

    @Override
    public void g(q qVar) {
        ((q.a) a1.i(this.f12555f)).g(this);
        a aVar = this.f12556g;
        if (aVar != null) {
            aVar.b(this.f12550a);
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return ((q) a1.i(this.f12554e)).getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return ((q) a1.i(this.f12554e)).getNextLoadPositionUs();
    }

    @Override
    public f2.z getTrackGroups() {
        return ((q) a1.i(this.f12554e)).getTrackGroups();
    }

    public long i() {
        return this.f12558i;
    }

    @Override
    public boolean isLoading() {
        q qVar = this.f12554e;
        return qVar != null && qVar.isLoading();
    }

    public long j() {
        return this.f12551b;
    }

    @Override
    public void h(q qVar) {
        ((q.a) a1.i(this.f12555f)).h(this);
    }

    public void m(long j10) {
        this.f12558i = j10;
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        try {
            q qVar = this.f12554e;
            if (qVar != null) {
                qVar.maybeThrowPrepareError();
            } else {
                r rVar = this.f12553d;
                if (rVar != null) {
                    rVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f12556g;
            if (aVar == null) {
                throw e10;
            }
            if (this.f12557h) {
                return;
            }
            this.f12557h = true;
            aVar.a(this.f12550a, e10);
        }
    }

    public void n() {
        if (this.f12554e != null) {
            ((r) androidx.media3.common.util.a.e(this.f12553d)).k(this.f12554e);
        }
    }

    public void o(r rVar) {
        androidx.media3.common.util.a.g(this.f12553d == null);
        this.f12553d = rVar;
    }

    @Override
    public long readDiscontinuity() {
        return ((q) a1.i(this.f12554e)).readDiscontinuity();
    }

    @Override
    public void reevaluateBuffer(long j10) {
        ((q) a1.i(this.f12554e)).reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        return ((q) a1.i(this.f12554e)).seekToUs(j10);
    }
}
