package l9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import i9.a0;
import i9.b0;
import i9.e0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import i9.s;
import i9.t;
import i9.u;
import i9.v;
import java.util.Map;

public final class d implements l {

    public static final r f65649o = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return d.i();
        }
    };

    private final byte[] f65650a;

    private final d0 f65651b;

    private final boolean f65652c;

    private final s.a f65653d;

    private n f65654e;

    private e0 f65655f;

    private int f65656g;

    private Metadata f65657h;

    private v f65658i;

    private int f65659j;

    private int f65660k;

    private b f65661l;

    private int f65662m;

    private long f65663n;

    public d() {
        this(0);
    }

    private long e(d0 d0Var, boolean z10) {
        boolean zD;
        com.google.android.exoplayer2.util.a.e(this.f65658i);
        int iE = d0Var.e();
        while (iE <= d0Var.f() - 16) {
            d0Var.P(iE);
            if (s.d(d0Var, this.f65658i, this.f65660k, this.f65653d)) {
                d0Var.P(iE);
                return this.f65653d.f61970a;
            }
            iE++;
        }
        if (!z10) {
            d0Var.P(iE);
            return -1L;
        }
        while (iE <= d0Var.f() - this.f65659j) {
            d0Var.P(iE);
            try {
                zD = s.d(d0Var, this.f65658i, this.f65660k, this.f65653d);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (d0Var.e() <= d0Var.f() ? zD : false) {
                d0Var.P(iE);
                return this.f65653d.f61970a;
            }
            iE++;
        }
        d0Var.P(d0Var.f());
        return -1L;
    }

    private void f(m mVar) {
        this.f65660k = t.b(mVar);
        ((n) p0.j(this.f65654e)).g(g(mVar.getPosition(), mVar.getLength()));
        this.f65656g = 5;
    }

    private b0 g(long j10, long j11) {
        com.google.android.exoplayer2.util.a.e(this.f65658i);
        v vVar = this.f65658i;
        if (vVar.f61984k != null) {
            return new u(vVar, j10);
        }
        if (j11 == -1 || vVar.f61983j <= 0) {
            return new b0.b(vVar.f());
        }
        b bVar = new b(vVar, this.f65660k, j10, j11);
        this.f65661l = bVar;
        return bVar.b();
    }

    private void h(m mVar) {
        byte[] bArr = this.f65650a;
        mVar.peekFully(bArr, 0, bArr.length);
        mVar.resetPeekPosition();
        this.f65656g = 2;
    }

    public static l[] i() {
        return new l[]{new d()};
    }

    private void j() {
        ((e0) p0.j(this.f65655f)).e((this.f65663n * 1000000) / ((long) ((v) p0.j(this.f65658i)).f61978e), 1, this.f65662m, 0, null);
    }

    private int k(m mVar, a0 a0Var) {
        boolean z10;
        com.google.android.exoplayer2.util.a.e(this.f65655f);
        com.google.android.exoplayer2.util.a.e(this.f65658i);
        b bVar = this.f65661l;
        if (bVar != null && bVar.d()) {
            return this.f65661l.c(mVar, a0Var);
        }
        if (this.f65663n == -1) {
            this.f65663n = s.i(mVar, this.f65658i);
            return 0;
        }
        int iF = this.f65651b.f();
        if (iF < 32768) {
            int i10 = mVar.read(this.f65651b.d(), iF, 32768 - iF);
            z10 = i10 == -1;
            if (!z10) {
                this.f65651b.O(iF + i10);
            } else if (this.f65651b.a() == 0) {
                j();
                return -1;
            }
        } else {
            z10 = false;
        }
        int iE = this.f65651b.e();
        int i11 = this.f65662m;
        int i12 = this.f65659j;
        if (i11 < i12) {
            d0 d0Var = this.f65651b;
            d0Var.Q(Math.min(i12 - i11, d0Var.a()));
        }
        long jE = e(this.f65651b, z10);
        int iE2 = this.f65651b.e() - iE;
        this.f65651b.P(iE);
        this.f65655f.c(this.f65651b, iE2);
        this.f65662m += iE2;
        if (jE != -1) {
            j();
            this.f65662m = 0;
            this.f65663n = jE;
        }
        if (this.f65651b.a() < 16) {
            int iA = this.f65651b.a();
            System.arraycopy(this.f65651b.d(), this.f65651b.e(), this.f65651b.d(), 0, iA);
            this.f65651b.P(0);
            this.f65651b.O(iA);
        }
        return 0;
    }

    private void l(m mVar) {
        this.f65657h = t.d(mVar, !this.f65652c);
        this.f65656g = 1;
    }

    private void m(m mVar) {
        t.a aVar = new t.a(this.f65658i);
        boolean zE = false;
        while (!zE) {
            zE = t.e(mVar, aVar);
            this.f65658i = (v) p0.j(aVar.f61971a);
        }
        com.google.android.exoplayer2.util.a.e(this.f65658i);
        this.f65659j = Math.max(this.f65658i.f61976c, 6);
        ((e0) p0.j(this.f65655f)).d(this.f65658i.g(this.f65650a, this.f65657h));
        this.f65656g = 4;
    }

    private void n(m mVar) throws ParserException {
        t.i(mVar);
        this.f65656g = 3;
    }

    @Override
    public void b(n nVar) {
        this.f65654e = nVar;
        this.f65655f = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override
    public boolean c(m mVar) {
        t.c(mVar, false);
        return t.a(mVar);
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        int i10 = this.f65656g;
        if (i10 == 0) {
            l(mVar);
            return 0;
        }
        if (i10 == 1) {
            h(mVar);
            return 0;
        }
        if (i10 == 2) {
            n(mVar);
            return 0;
        }
        if (i10 == 3) {
            m(mVar);
            return 0;
        }
        if (i10 == 4) {
            f(mVar);
            return 0;
        }
        if (i10 == 5) {
            return k(mVar, a0Var);
        }
        throw new IllegalStateException();
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f65656g = 0;
        } else {
            b bVar = this.f65661l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        this.f65663n = j11 != 0 ? -1L : 0L;
        this.f65662m = 0;
        this.f65651b.L(0);
    }

    public d(int i10) {
        this.f65650a = new byte[42];
        this.f65651b = new d0(new byte[32768], 0);
        this.f65652c = (i10 & 1) != 0;
        this.f65653d = new s.a();
        this.f65656g = 0;
    }

    @Override
    public void release() {
    }
}
