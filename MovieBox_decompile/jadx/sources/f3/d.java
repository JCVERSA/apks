package f3;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import h3.s;
import java.util.List;
import java.util.Map;
import k2.l0;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.w;
import k2.x;

public class d implements r {

    public static final x f59990d = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return d.g();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private t f59991a;

    private i f59992b;

    private boolean f59993c;

    public static r[] g() {
        return new r[]{new d()};
    }

    private static j0 h(j0 j0Var) {
        j0Var.W(0);
        return j0Var;
    }

    private boolean i(k2.s sVar) {
        f fVar = new f();
        if (fVar.a(sVar, true) && (fVar.f60000b & 2) == 2) {
            int iMin = Math.min(fVar.f60007i, 8);
            j0 j0Var = new j0(iMin);
            sVar.peekFully(j0Var.e(), 0, iMin);
            if (b.p(h(j0Var))) {
                this.f59992b = new b();
            } else if (j.r(h(j0Var))) {
                this.f59992b = new j();
            } else if (h.o(h(j0Var))) {
                this.f59992b = new h();
            }
            return true;
        }
        return false;
    }

    @Override
    public boolean b(k2.s sVar) {
        try {
            return i(sVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f59991a);
        if (this.f59992b == null) {
            if (!i(sVar)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            sVar.resetPeekPosition();
        }
        if (!this.f59993c) {
            s0 s0VarTrack = this.f59991a.track(0, 1);
            this.f59991a.endTracks();
            this.f59992b.d(this.f59991a, s0VarTrack);
            this.f59993c = true;
        }
        return this.f59992b.g(sVar, l0Var);
    }

    @Override
    public void e(t tVar) {
        this.f59991a = tVar;
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        i iVar = this.f59992b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override
    public void release() {
    }
}
