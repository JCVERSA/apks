package r9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import i9.a0;
import i9.e0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import java.util.Map;

public class d implements l {

    public static final r f70887d = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return d.e();
        }
    };

    private n f70888a;

    private i f70889b;

    private boolean f70890c;

    public static l[] e() {
        return new l[]{new d()};
    }

    private static d0 f(d0 d0Var) {
        d0Var.P(0);
        return d0Var;
    }

    private boolean g(m mVar) {
        f fVar = new f();
        if (fVar.a(mVar, true) && (fVar.f70897b & 2) == 2) {
            int iMin = Math.min(fVar.f70904i, 8);
            d0 d0Var = new d0(iMin);
            mVar.peekFully(d0Var.d(), 0, iMin);
            if (b.p(f(d0Var))) {
                this.f70889b = new b();
            } else if (j.r(f(d0Var))) {
                this.f70889b = new j();
            } else if (h.p(f(d0Var))) {
                this.f70889b = new h();
            }
            return true;
        }
        return false;
    }

    @Override
    public void b(n nVar) {
        this.f70888a = nVar;
    }

    @Override
    public boolean c(m mVar) {
        try {
            return g(mVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f70888a);
        if (this.f70889b == null) {
            if (!g(mVar)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            mVar.resetPeekPosition();
        }
        if (!this.f70890c) {
            e0 e0VarTrack = this.f70888a.track(0, 1);
            this.f70888a.endTracks();
            this.f70889b.d(this.f70888a, e0VarTrack);
            this.f70890c = true;
        }
        return this.f70889b.g(mVar, a0Var);
    }

    @Override
    public void seek(long j10, long j11) {
        i iVar = this.f70889b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override
    public void release() {
    }
}
