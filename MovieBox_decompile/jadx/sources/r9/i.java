package r9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.b0;
import i9.e0;
import i9.m;
import i9.n;

abstract class i {

    private e0 f70911b;

    private n f70912c;

    private g f70913d;

    private long f70914e;

    private long f70915f;

    private long f70916g;

    private int f70917h;

    private int f70918i;

    private long f70920k;

    private boolean f70921l;

    private boolean f70922m;

    private final e f70910a = new e();

    private b f70919j = new b();

    static class b {

        p1 f70923a;

        g f70924b;

        b() {
        }
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.f70911b);
        p0.j(this.f70912c);
    }

    private boolean i(m mVar) {
        while (this.f70910a.d(mVar)) {
            this.f70920k = mVar.getPosition() - this.f70915f;
            if (!h(this.f70910a.c(), this.f70915f, this.f70919j)) {
                return true;
            }
            this.f70915f = mVar.getPosition();
        }
        this.f70917h = 3;
        return false;
    }

    private int j(m mVar) {
        if (!i(mVar)) {
            return -1;
        }
        p1 p1Var = this.f70919j.f70923a;
        this.f70918i = p1Var.f24915z;
        if (!this.f70922m) {
            this.f70911b.d(p1Var);
            this.f70922m = true;
        }
        g gVar = this.f70919j.f70924b;
        if (gVar != null) {
            this.f70913d = gVar;
        } else if (mVar.getLength() == -1) {
            this.f70913d = new c();
        } else {
            f fVarB = this.f70910a.b();
            this.f70913d = new r9.a(this, this.f70915f, mVar.getLength(), fVarB.f70903h + fVarB.f70904i, fVarB.f70898c, (fVarB.f70897b & 4) != 0);
        }
        this.f70917h = 2;
        this.f70910a.f();
        return 0;
    }

    private int k(m mVar, a0 a0Var) {
        long jA = this.f70913d.a(mVar);
        if (jA >= 0) {
            a0Var.f61884a = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.f70921l) {
            this.f70912c.g((b0) com.google.android.exoplayer2.util.a.i(this.f70913d.createSeekMap()));
            this.f70921l = true;
        }
        if (this.f70920k <= 0 && !this.f70910a.d(mVar)) {
            this.f70917h = 3;
            return -1;
        }
        this.f70920k = 0L;
        d0 d0VarC = this.f70910a.c();
        long jF = f(d0VarC);
        if (jF >= 0) {
            long j10 = this.f70916g;
            if (j10 + jF >= this.f70914e) {
                long jB = b(j10);
                this.f70911b.c(d0VarC, d0VarC.f());
                this.f70911b.e(jB, 1, d0VarC.f(), 0, null);
                this.f70914e = -1L;
            }
        }
        this.f70916g += jF;
        return 0;
    }

    protected long b(long j10) {
        return (j10 * 1000000) / ((long) this.f70918i);
    }

    protected long c(long j10) {
        return (((long) this.f70918i) * j10) / 1000000;
    }

    void d(n nVar, e0 e0Var) {
        this.f70912c = nVar;
        this.f70911b = e0Var;
        l(true);
    }

    protected void e(long j10) {
        this.f70916g = j10;
    }

    protected abstract long f(d0 d0Var);

    final int g(m mVar, a0 a0Var) {
        a();
        int i10 = this.f70917h;
        if (i10 == 0) {
            return j(mVar);
        }
        if (i10 == 1) {
            mVar.skipFully((int) this.f70915f);
            this.f70917h = 2;
            return 0;
        }
        if (i10 == 2) {
            p0.j(this.f70913d);
            return k(mVar, a0Var);
        }
        if (i10 == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    protected abstract boolean h(d0 d0Var, long j10, b bVar);

    protected void l(boolean z10) {
        if (z10) {
            this.f70919j = new b();
            this.f70915f = 0L;
            this.f70917h = 0;
        } else {
            this.f70917h = 1;
        }
        this.f70914e = -1L;
        this.f70916g = 0L;
    }

    final void m(long j10, long j11) {
        this.f70910a.e();
        if (j10 == 0) {
            l(!this.f70921l);
        } else if (this.f70917h != 0) {
            this.f70914e = c(j11);
            ((g) p0.j(this.f70913d)).startSeek(this.f70914e);
            this.f70917h = 2;
        }
    }

    private static final class c implements g {
        private c() {
        }

        @Override
        public long a(m mVar) {
            return -1L;
        }

        @Override
        public b0 createSeekMap() {
            return new b0.b(C.TIME_UNSET);
        }

        @Override
        public void startSeek(long j10) {
        }
    }
}
