package f3;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.l0;
import k2.m0;
import k2.s;
import k2.s0;
import k2.t;

abstract class i {

    private s0 f60014b;

    private t f60015c;

    private g f60016d;

    private long f60017e;

    private long f60018f;

    private long f60019g;

    private int f60020h;

    private int f60021i;

    private long f60023k;

    private boolean f60024l;

    private boolean f60025m;

    private final e f60013a = new e();

    private b f60022j = new b();

    static class b {

        r f60026a;

        g f60027b;

        b() {
        }
    }

    private void a() {
        androidx.media3.common.util.a.i(this.f60014b);
        a1.i(this.f60015c);
    }

    private boolean i(s sVar) {
        while (this.f60013a.d(sVar)) {
            this.f60023k = sVar.getPosition() - this.f60018f;
            if (!h(this.f60013a.c(), this.f60018f, this.f60022j)) {
                return true;
            }
            this.f60018f = sVar.getPosition();
        }
        this.f60020h = 3;
        return false;
    }

    private int j(s sVar) {
        if (!i(sVar)) {
            return -1;
        }
        r rVar = this.f60022j.f60026a;
        this.f60021i = rVar.F;
        if (!this.f60025m) {
            this.f60014b.d(rVar);
            this.f60025m = true;
        }
        g gVar = this.f60022j.f60027b;
        if (gVar != null) {
            this.f60016d = gVar;
        } else if (sVar.getLength() == -1) {
            this.f60016d = new c();
        } else {
            f fVarB = this.f60013a.b();
            this.f60016d = new f3.a(this, this.f60018f, sVar.getLength(), fVarB.f60006h + fVarB.f60007i, fVarB.f60001c, (fVarB.f60000b & 4) != 0);
        }
        this.f60020h = 2;
        this.f60013a.f();
        return 0;
    }

    private int k(s sVar, l0 l0Var) {
        long jA = this.f60016d.a(sVar);
        if (jA >= 0) {
            l0Var.f63627a = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.f60024l) {
            m0 m0Var = (m0) androidx.media3.common.util.a.i(this.f60016d.createSeekMap());
            this.f60015c.d(m0Var);
            this.f60014b.f(m0Var.getDurationUs());
            this.f60024l = true;
        }
        if (this.f60023k <= 0 && !this.f60013a.d(sVar)) {
            this.f60020h = 3;
            return -1;
        }
        this.f60023k = 0L;
        j0 j0VarC = this.f60013a.c();
        long jF = f(j0VarC);
        if (jF >= 0) {
            long j10 = this.f60019g;
            if (j10 + jF >= this.f60017e) {
                long jB = b(j10);
                this.f60014b.c(j0VarC, j0VarC.g());
                this.f60014b.b(jB, 1, j0VarC.g(), 0, null);
                this.f60017e = -1L;
            }
        }
        this.f60019g += jF;
        return 0;
    }

    protected long b(long j10) {
        return (j10 * 1000000) / ((long) this.f60021i);
    }

    protected long c(long j10) {
        return (((long) this.f60021i) * j10) / 1000000;
    }

    void d(t tVar, s0 s0Var) {
        this.f60015c = tVar;
        this.f60014b = s0Var;
        l(true);
    }

    protected void e(long j10) {
        this.f60019g = j10;
    }

    protected abstract long f(j0 j0Var);

    final int g(s sVar, l0 l0Var) {
        a();
        int i10 = this.f60020h;
        if (i10 == 0) {
            return j(sVar);
        }
        if (i10 == 1) {
            sVar.skipFully((int) this.f60018f);
            this.f60020h = 2;
            return 0;
        }
        if (i10 == 2) {
            a1.i(this.f60016d);
            return k(sVar, l0Var);
        }
        if (i10 == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    protected abstract boolean h(j0 j0Var, long j10, b bVar);

    protected void l(boolean z10) {
        if (z10) {
            this.f60022j = new b();
            this.f60018f = 0L;
            this.f60020h = 0;
        } else {
            this.f60020h = 1;
        }
        this.f60017e = -1L;
        this.f60019g = 0L;
    }

    final void m(long j10, long j11) {
        this.f60013a.e();
        if (j10 == 0) {
            l(!this.f60024l);
        } else if (this.f60020h != 0) {
            this.f60017e = c(j11);
            ((g) a1.i(this.f60016d)).startSeek(this.f60017e);
            this.f60020h = 2;
        }
    }

    private static final class c implements g {
        private c() {
        }

        @Override
        public long a(s sVar) {
            return -1L;
        }

        @Override
        public m0 createSeekMap() {
            return new m0.b(C.TIME_UNSET);
        }

        @Override
        public void startSeek(long j10) {
        }
    }
}
