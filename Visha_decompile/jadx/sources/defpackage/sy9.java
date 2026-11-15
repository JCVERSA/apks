package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;

public abstract class sy9 {
    public fva b;
    public qk3 c;
    public de7 d;
    public long e;
    public long f;
    public long g;
    public int h;
    public int i;
    public long k;
    public boolean l;
    public boolean m;
    public final be7 a = new be7();
    public b j = new b();

    public static class b {
        public k a;
        public de7 b;
    }

    public static final class c implements de7 {
        public c() {
        }

        @Override
        public long a(pk3 pk3Var) {
            return -1L;
        }

        @Override
        public ja9 createSeekMap() {
            return new ja9.b(C.TIME_UNSET);
        }

        @Override
        public void startSeek(long j) {
        }
    }

    public final void a() {
        zi.i(this.b);
        blb.j(this.c);
    }

    public long b(long j) {
        return (j * 1000000) / ((long) this.i);
    }

    public long c(long j) {
        return (((long) this.i) * j) / 1000000;
    }

    public void d(qk3 qk3Var, fva fvaVar) {
        this.c = qk3Var;
        this.b = fvaVar;
        l(true);
    }

    public void e(long j) {
        this.g = j;
    }

    public abstract long f(qw7 qw7Var);

    public final int g(pk3 pk3Var, id8 id8Var) {
        a();
        int i = this.h;
        if (i == 0) {
            return j(pk3Var);
        }
        if (i == 1) {
            pk3Var.skipFully((int) this.f);
            this.h = 2;
            return 0;
        }
        if (i == 2) {
            blb.j(this.d);
            return k(pk3Var, id8Var);
        }
        if (i == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    public final boolean h(pk3 pk3Var) {
        while (this.a.d(pk3Var)) {
            this.k = pk3Var.getPosition() - this.f;
            if (!i(this.a.c(), this.f, this.j)) {
                return true;
            }
            this.f = pk3Var.getPosition();
        }
        this.h = 3;
        return false;
    }

    public abstract boolean i(qw7 qw7Var, long j, b bVar);

    public final int j(pk3 pk3Var) {
        if (!h(pk3Var)) {
            return -1;
        }
        k kVar = this.j.a;
        this.i = kVar.A;
        if (!this.m) {
            this.b.b(kVar);
            this.m = true;
        }
        de7 de7Var = this.j.b;
        if (de7Var != null) {
            this.d = de7Var;
        } else if (pk3Var.getLength() == -1) {
            this.d = new c();
        } else {
            ce7 ce7VarB = this.a.b();
            this.d = new c32(this, this.f, pk3Var.getLength(), ce7VarB.h + ce7VarB.i, ce7VarB.c, (ce7VarB.b & 4) != 0);
        }
        this.h = 2;
        this.a.f();
        return 0;
    }

    public final int k(pk3 pk3Var, id8 id8Var) {
        long jA = this.d.a(pk3Var);
        if (jA >= 0) {
            id8Var.a = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.l) {
            this.c.d((ja9) zi.i(this.d.createSeekMap()));
            this.l = true;
        }
        if (this.k <= 0 && !this.a.d(pk3Var)) {
            this.h = 3;
            return -1;
        }
        this.k = 0L;
        qw7 qw7VarC = this.a.c();
        long jF = f(qw7VarC);
        if (jF >= 0) {
            long j = this.g;
            if (j + jF >= this.e) {
                long jB = b(j);
                this.b.d(qw7VarC, qw7VarC.f());
                this.b.e(jB, 1, qw7VarC.f(), 0, null);
                this.e = -1L;
            }
        }
        this.g += jF;
        return 0;
    }

    public void l(boolean z) {
        if (z) {
            this.j = new b();
            this.f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.e = -1L;
        this.g = 0L;
    }

    public final void m(long j, long j2) {
        this.a.e();
        if (j == 0) {
            l(!this.l);
        } else if (this.h != 0) {
            this.e = c(j2);
            ((de7) blb.j(this.d)).startSeek(this.e);
            this.h = 2;
        }
    }
}
